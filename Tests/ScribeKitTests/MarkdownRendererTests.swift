import XCTest
@testable import ScribeKit

final class MarkdownRendererTests: XCTestCase {
    func testRenderProducesExpectedStructure() {
        let segments = [
            TranscriptSegment(
                text: "Hello and welcome to the podcast.",
                startTime: 0.0,
                endTime: 4.5,
                confidence: 0.95
            ),
            TranscriptSegment(
                text: "Today we are discussing Swift concurrency.",
                startTime: 5.0,
                endTime: 9.8,
                confidence: 0.92
            ),
            TranscriptSegment(
                text: "Let's dive right in.",
                startTime: 10.0,
                endTime: 12.3,
                confidence: 0.88
            ),
        ]

        let renderer = MarkdownRenderer()
        let output = renderer.render(segments, title: "Episode 42")

        // Check H1 title
        XCTAssertTrue(output.contains("# Episode 42"), "Should contain H1 title")

        // Check timestamp headings
        XCTAssertTrue(output.contains("## [0:00 – 0:04]"), "Should contain first timestamp range")
        XCTAssertTrue(output.contains("## [0:05 – 0:09]"), "Should contain second timestamp range")
        XCTAssertTrue(output.contains("## [0:10 – 0:12]"), "Should contain third timestamp range")

        // Check segment text
        XCTAssertTrue(output.contains("Hello and welcome to the podcast."))
        XCTAssertTrue(output.contains("Today we are discussing Swift concurrency."))
        XCTAssertTrue(output.contains("Let's dive right in."))

        // Check footer metadata
        XCTAssertTrue(output.contains("3 segments"), "Should show segment count")
        XCTAssertTrue(output.contains("Transcribed on"), "Should have date line")
    }

    func testRenderSingleSegment() {
        let segments = [
            TranscriptSegment(
                text: "Just one segment.",
                startTime: 0.0,
                endTime: 3.0,
                confidence: 0.99
            ),
        ]

        let renderer = MarkdownRenderer()
        let output = renderer.render(segments, title: "Single")

        XCTAssertTrue(output.contains("# Single"))
        XCTAssertTrue(output.contains("1 segment"), "Should use singular for one segment")
        XCTAssertFalse(output.contains("1 segments"), "Should not use plural for one segment")
    }

    func testRenderEmptySegments() {
        let renderer = MarkdownRenderer()
        let output = renderer.render([], title: "Empty")

        XCTAssertTrue(output.contains("# Empty"))
        XCTAssertTrue(output.contains("0 segments"))
    }
}
