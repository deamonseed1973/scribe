import ArgumentParser
import Foundation
import ScribeKit

@main
struct ScribeCLI: AsyncParsableCommand {
    static let configuration = CommandConfiguration(
        commandName: "scribe",
        abstract: "On-device audio transcription with full-text search",
        subcommands: [Transcribe.self, Index.self, Search.self, List.self]
    )
}

extension ScribeCLI {
    struct Transcribe: AsyncParsableCommand {
        static let configuration = CommandConfiguration(
            abstract: "Transcribe an audio file to Markdown"
        )

        @Argument(help: "Path to the audio file")
        var audioFile: String

        @Option(name: .long, help: "Output file path (default: stdout)")
        var output: String?

        @Option(name: .long, help: "Title for the transcript")
        var title: String?

        func run() async throws {
            let url = URL(fileURLWithPath: audioFile)
            guard FileManager.default.fileExists(atPath: url.path) else {
                throw ValidationError("File not found: \(audioFile)")
            }

            FileHandle.standardError.write(Data("Transcribing \(audioFile)...\n".utf8))
            let scribe = try ScribeKit.Scribe()
            let markdown = try await scribe.transcribeAndStore(audioURL: url, title: title)

            if let outputPath = output {
                try markdown.write(toFile: outputPath, atomically: true, encoding: .utf8)
                FileHandle.standardError.write(Data("Written to \(outputPath)\n".utf8))
            } else {
                print(markdown)
            }
        }
    }

    struct Index: AsyncParsableCommand {
        static let configuration = CommandConfiguration(
            abstract: "Index an audio file without producing output"
        )

        @Argument(help: "Path to the audio file")
        var audioFile: String

        @Option(name: .long, help: "Title for the transcript")
        var title: String?

        func run() async throws {
            let url = URL(fileURLWithPath: audioFile)
            guard FileManager.default.fileExists(atPath: url.path) else {
                throw ValidationError("File not found: \(audioFile)")
            }

            FileHandle.standardError.write(Data("Indexing \(audioFile)...\n".utf8))
            let scribe = try ScribeKit.Scribe()
            try await scribe.index(audioURL: url)
            FileHandle.standardError.write(Data("Indexed successfully.\n".utf8))
        }
    }

    struct Search: AsyncParsableCommand {
        static let configuration = CommandConfiguration(
            abstract: "Search indexed transcripts"
        )

        @Argument(help: "Search query")
        var query: String

        func run() async throws {
            let scribe = try ScribeKit.Scribe()
            let results = try await scribe.search(query)

            if results.isEmpty {
                print("No results found for: \(query)")
                return
            }

            for result in results {
                let minutes = Int(result.startTime) / 60
                let seconds = Int(result.startTime) % 60
                print("[\(result.source) @ \(String(format: "%d:%02d", minutes, seconds))] \(result.snippet)")
            }
        }
    }

    struct List: AsyncParsableCommand {
        static let configuration = CommandConfiguration(
            abstract: "List all indexed audio sources"
        )

        func run() async throws {
            let scribe = try ScribeKit.Scribe()
            let sources = try await scribe.listSources()

            if sources.isEmpty {
                print("No indexed sources.")
                return
            }

            for source in sources {
                print(source)
            }
        }
    }
}
