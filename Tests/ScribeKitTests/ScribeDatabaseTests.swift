import Foundation
import XCTest
@testable import ScribeKit

final class ScribeDatabaseTests: XCTestCase {
    func testSearchFallsBackToTranscriptTextWhenSnippetIsNull() async throws {
        let databasePath = FileManager.default.temporaryDirectory
            .appendingPathComponent(UUID().uuidString)
            .appendingPathExtension("db")

        let database = try ScribeDatabase(path: databasePath.path)
        defer {
            try? FileManager.default.removeItem(at: databasePath)
        }

        try await database.insert(
            [
                TranscriptSegment(
                    text: "Accessibility guidance for coding agents",
                    startTime: 1232.958_984_375,
                    endTime: 1240.0,
                    confidence: 0.98
                ),
            ],
            source: "Agentic_Coding_for_Xcode_Accessibility.m4a"
        )

        let results = try await database.search("accessibility")

        XCTAssertEqual(results.count, 1)
        XCTAssertEqual(results[0].source, "Agentic_Coding_for_Xcode_Accessibility.m4a")
        XCTAssertEqual(results[0].snippet, "Accessibility guidance for coding agents")
    }
}
