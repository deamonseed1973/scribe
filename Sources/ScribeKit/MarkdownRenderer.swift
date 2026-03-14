import Foundation
import Markdown

/// Renders transcript segments into a Markdown document using swift-markdown's AST.
public struct MarkdownRenderer: Sendable {
    public init() {}

    /// Formats a TimeInterval as M:SS.
    private func formatTime(_ time: TimeInterval) -> String {
        let minutes = Int(time) / 60
        let seconds = Int(time) % 60
        return String(format: "%d:%02d", minutes, seconds)
    }

    /// Renders an array of transcript segments into a Markdown string.
    public func render(_ segments: [TranscriptSegment], title: String) -> String {
        var children: [BlockMarkup] = []

        // H1 = title
        children.append(Heading(level: 1, Text(title)))

        // Each segment as H2 timestamp + paragraph
        for segment in segments {
            let timeRange = "[\(formatTime(segment.startTime)) – \(formatTime(segment.endTime))]"
            children.append(Heading(level: 2, Text(timeRange)))
            children.append(Paragraph(Text(segment.text)))
        }

        // Footer metadata
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .short
        let dateString = dateFormatter.string(from: Date())

        children.append(ThematicBreak())
        children.append(Paragraph(
            Text("Transcribed on \(dateString) · \(segments.count) segment\(segments.count == 1 ? "" : "s")")
        ))

        let document = Document(children)
        var formatter = MarkupFormatter()
        formatter.visit(document)
        return formatter.result
    }
}
