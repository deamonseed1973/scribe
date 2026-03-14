import Foundation

/// A single segment of transcribed audio.
public struct TranscriptSegment: Codable, Equatable, Sendable {
    public let text: String
    public let startTime: TimeInterval
    public let endTime: TimeInterval
    public let confidence: Float

    public init(text: String, startTime: TimeInterval, endTime: TimeInterval, confidence: Float) {
        self.text = text
        self.startTime = startTime
        self.endTime = endTime
        self.confidence = confidence
    }
}
