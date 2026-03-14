import Foundation
import GRDB

/// A search result from the full-text search index.
public struct SearchResult: Sendable {
    public let source: String
    public let startTime: TimeInterval
    public let snippet: String
}

/// Actor wrapping a GRDB DatabaseQueue for storing and searching transcripts.
public actor ScribeDatabase {
    private let dbQueue: DatabaseQueue

    /// Opens (or creates) the database at the given path.
    public init(path: String? = nil) throws {
        let dbPath: String
        if let path = path {
            dbPath = path
        } else {
            let dir = FileManager.default.homeDirectoryForCurrentUser
                .appendingPathComponent(".scribe")
            try FileManager.default.createDirectory(at: dir, withIntermediateDirectories: true)
            dbPath = dir.appendingPathComponent("scribe.db").path
        }

        dbQueue = try DatabaseQueue(path: dbPath)
        try Self.migrate(dbQueue)
    }

    /// Runs database migrations.
    private static func migrate(_ db: DatabaseQueue) throws {
        var migrator = DatabaseMigrator()

        migrator.registerMigration("v1") { db in
            try db.create(table: "transcripts") { t in
                t.autoIncrementedPrimaryKey("id")
                t.column("source", .text).notNull()
                t.column("start_time", .double).notNull()
                t.column("end_time", .double).notNull()
                t.column("text", .text).notNull()
                t.column("created_at", .text).notNull()
            }

            try db.create(virtualTable: "transcripts_fts", using: FTS5()) { t in
                t.content = ""
                t.column("text")
            }

            // Trigger to keep FTS in sync on insert
            try db.execute(sql: """
                CREATE TRIGGER transcripts_ai AFTER INSERT ON transcripts BEGIN
                    INSERT INTO transcripts_fts(rowid, text) VALUES (new.id, new.text);
                END
                """)
        }

        try migrator.migrate(db)
    }

    /// Inserts transcript segments into the database.
    public func insert(_ segments: [TranscriptSegment], source: String) async throws {
        let now = ISO8601DateFormatter().string(from: Date())
        try await dbQueue.write { db in
            for segment in segments {
                try db.execute(
                    sql: """
                        INSERT INTO transcripts (source, start_time, end_time, text, created_at)
                        VALUES (?, ?, ?, ?, ?)
                        """,
                    arguments: [source, segment.startTime, segment.endTime, segment.text, now]
                )
            }
        }
    }

    /// Performs a full-text search and returns matching results.
    public func search(_ query: String) async throws -> [SearchResult] {
        try await dbQueue.read { db in
            let rows = try Row.fetchAll(db, sql: """
                SELECT
                    t.source,
                    t.start_time,
                    COALESCE(snippet(transcripts_fts, 0, '**', '**', '…', 32), t.text) AS snippet
                FROM transcripts_fts
                JOIN transcripts t ON t.id = transcripts_fts.rowid
                WHERE transcripts_fts MATCH ?
                ORDER BY rank
                """, arguments: [query])

            return rows.map { row in
                SearchResult(
                    source: row["source"],
                    startTime: row["start_time"],
                    snippet: row["snippet"]
                )
            }
        }
    }

    /// Returns all distinct source file names.
    public func allSources() async throws -> [String] {
        try await dbQueue.read { db in
            try String.fetchAll(db, sql: "SELECT DISTINCT source FROM transcripts ORDER BY source")
        }
    }
}
