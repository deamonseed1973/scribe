# Scribe 🎙️

On-device audio transcription with full-text search and Markdown output — built as a Swift Package chimera.

## What is Scribe?

Scribe transcribes audio files locally on your Mac, stores transcripts in a searchable SQLite database, and renders results as clean Markdown documents. No cloud APIs, no data leaves your machine.

## The Chimera

Scribe combines four Swift packages into a single cohesive tool:

| Package | Role in Scribe |
|---|---|
| **[WhisperKit](https://github.com/argmaxinc/WhisperKit)** | On-device speech-to-text using OpenAI Whisper models via Core ML |
| **[swift-async-algorithms](https://github.com/apple/swift-async-algorithms)** | Batches raw token-level segments into sentence-length chunks using async sequence operators |
| **[swift-markdown](https://github.com/apple/swift-markdown)** | Programmatically constructs Markdown AST (headings, paragraphs, metadata) and renders to text |
| **[GRDB.swift](https://github.com/groue/GRDB.swift)** | SQLite storage with FTS5 full-text search for fast transcript querying |

Additional dependency: [swift-argument-parser](https://github.com/apple/swift-argument-parser) for the CLI.

## Requirements

- macOS 14+
- Swift 5.9+

## Installation

```bash
git clone https://github.com/deamonseed1973/scribe.git
cd scribe
swift build -c release
# Binary is at .build/release/scribe
```

## Usage

### Transcribe audio to Markdown

```bash
scribe transcribe recording.m4a --title "Team Standup"
```

Output (stdout):
```markdown
# Team Standup

## [0:00 – 0:05]

Hello everyone, let's get started with today's standup.

## [0:05 – 0:10]

I finished the authentication module yesterday.

---

Transcribed on March 14, 2026 at 10:30 AM · 2 segments
```

Save to file:
```bash
scribe transcribe recording.m4a --output transcript.md --title "Team Standup"
```

### Index audio (store without output)

```bash
scribe index meeting.m4a --title "Q1 Planning"
```

### Search indexed transcripts

```bash
scribe search "authentication"
# [meeting.m4a @ 2:15] ...finished the **authentication** module yesterday...
```

### List indexed sources

```bash
scribe list
# meeting.m4a
# recording.m4a
```

### Show database path

```bash
scribe db-path
# ~/.scribe/scribe.db
```

> **Planned (v2):** Use a custom database location with `--database <path>`.

## Library Usage

Scribe's core functionality is available as `ScribeKit`, a Swift library you can import into your own packages:

```swift
import ScribeKit

let scribe = try Scribe()

// Transcribe and store
let markdown = try await scribe.transcribeAndStore(
    audioURL: fileURL,
    title: "My Recording"
)

// Search
let results = try await scribe.search("keyword")
for result in results {
    print("\(result.source) @ \(result.startTime): \(result.snippet)")
}
```

## Architecture

```
Sources/
  ScribeKit/               # Library target
    TranscriptSegment.swift  # Codable data model
    TranscriptionEngine.swift # WhisperKit actor wrapper
    MarkdownRenderer.swift   # swift-markdown AST renderer
    ScribeDatabase.swift     # GRDB + FTS5 storage
    Scribe.swift             # Orchestrator API
  scribe/                  # CLI executable
    main.swift               # swift-argument-parser commands
Tests/
  ScribeKitTests/
    MarkdownRendererTests.swift
    ScribeDatabaseTests.swift
```

## Data Storage

Transcripts are stored in `~/.scribe/scribe.db` (SQLite with FTS5). The directory is created automatically on first use.

Run `scribe db-path` to print the exact path on your system.

## Roadmap (v2)

- [ ] `scribe db-path` command — print the path to the SQLite database
- [ ] `--database <path>` flag — use a non-standard database location
- [ ] Structured JSON output (`--format json`)
- [ ] WebVTT caption export (`--format vtt`)
- [ ] SRT caption export (`--format srt`)
- [ ] Improved Markdown formatting (speaker detection, confidence markers)

## Rating

⭐⭐⭐⭐ — _"Well constructed. I can see some interesting use cases for a remote agent to transcribe audio and save it locally."_ — Richard Stelling

## License

MIT
