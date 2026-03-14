import Foundation

/// Main API entry point that orchestrates transcription, storage, and rendering.
public class Scribe: Sendable {
    private let engine: TranscriptionEngine
    private let database: ScribeDatabase
    private let renderer: MarkdownRenderer

    public init(engine: TranscriptionEngine? = nil, database: ScribeDatabase? = nil) throws {
        self.engine = engine ?? TranscriptionEngine()
        self.database = try database ?? ScribeDatabase()
        self.renderer = MarkdownRenderer()
    }

    /// Transcribes audio, stores segments in the database, and returns rendered Markdown.
    public func transcribeAndStore(audioURL: URL, title: String? = nil) async throws -> String {
        let docTitle = title ?? audioURL.deletingPathExtension().lastPathComponent
        var segments: [TranscriptSegment] = []

        for try await segment in await engine.transcribe(audioURL: audioURL) {
            segments.append(segment)
            FileHandle.standardError.write(
                Data("  [\(formatTime(segment.startTime))] \(segment.text)\n".utf8)
            )
        }

        guard !segments.isEmpty else {
            throw ScribeError.noSegments
        }

        try await database.insert(segments, source: audioURL.lastPathComponent)
        return renderer.render(segments, title: docTitle)
    }

    /// Indexes audio into the database without producing output.
    public func index(audioURL: URL) async throws {
        var segments: [TranscriptSegment] = []
        for try await segment in await engine.transcribe(audioURL: audioURL) {
            segments.append(segment)
            FileHandle.standardError.write(
                Data("  [\(formatTime(segment.startTime))] \(segment.text)\n".utf8)
            )
        }
        guard !segments.isEmpty else {
            throw ScribeError.noSegments
        }
        try await database.insert(segments, source: audioURL.lastPathComponent)
    }

    /// Searches indexed transcripts.
    public func search(_ query: String) async throws -> [SearchResult] {
        try await database.search(query)
    }

    /// Lists all indexed sources.
    public func listSources() async throws -> [String] {
        try await database.allSources()
    }

    private func formatTime(_ time: TimeInterval) -> String {
        let minutes = Int(time) / 60
        let seconds = Int(time) % 60
        return String(format: "%d:%02d", minutes, seconds)
    }
}

public enum ScribeError: LocalizedError {
    case noSegments

    public var errorDescription: String? {
        switch self {
        case .noSegments:
            return "No transcript segments were produced from the audio file."
        }
    }
}
