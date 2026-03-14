import Foundation
import WhisperKit
import AsyncAlgorithms

/// Actor that wraps WhisperKit for on-device audio transcription.
public actor TranscriptionEngine {
    private var whisperKit: WhisperKit?
    private let modelName: String

    public init(modelName: String = "openai_whisper-base") {
        self.modelName = modelName
    }

    /// Ensures the WhisperKit model is loaded, downloading if necessary.
    private func ensureModel() async throws -> WhisperKit {
        if let existing = whisperKit {
            return existing
        }
        FileHandle.standardError.write(Data("Initializing WhisperKit (model: \(modelName))...\n".utf8))
        let kit = try await WhisperKit(model: modelName)
        FileHandle.standardError.write(Data("Model ready.\n".utf8))
        self.whisperKit = kit
        return kit
    }

    /// Transcribes audio from a URL, returning an async stream of transcript segments.
    /// Segments are batched into ~5-second chunks using swift-async-algorithms.
    public func transcribe(audioURL: URL) -> AsyncThrowingStream<TranscriptSegment, Error> {
        AsyncThrowingStream { continuation in
            Task {
                do {
                    let kit = try await self.ensureModel()
                    let results = try await kit.transcribe(audioPath: audioURL.path)

                    guard let result = results.first else {
                        continuation.finish()
                        return
                    }

                    // Convert WhisperKit segments into our TranscriptSegment type
                    var rawSegments: [TranscriptSegment] = []
                    if let segments = result.segments {
                        for seg in segments {
                            let segment = TranscriptSegment(
                                text: seg.text.trimmingCharacters(in: .whitespacesAndNewlines),
                                startTime: TimeInterval(seg.start),
                                endTime: TimeInterval(seg.end),
                                confidence: seg.avgLogprob
                            )
                            rawSegments.append(segment)
                        }
                    }

                    // Batch segments into ~5-second chunks using AsyncAlgorithms
                    let asyncSegments = rawSegments.async
                    let chunked = asyncSegments.chunked(by: { first, next in
                        next.endTime - first.startTime < 5.0
                    })

                    for await chunk in chunked {
                        guard let first = chunk.first else { continue }
                        let last = chunk.last ?? first
                        let combinedText = chunk.map(\.text).joined(separator: " ")
                        let avgConfidence = chunk.map(\.confidence).reduce(0, +) / Float(chunk.count)
                        let merged = TranscriptSegment(
                            text: combinedText,
                            startTime: first.startTime,
                            endTime: last.endTime,
                            confidence: avgConfidence
                        )
                        continuation.yield(merged)
                    }

                    continuation.finish()
                } catch {
                    continuation.finish(throwing: error)
                }
            }
        }
    }
}
