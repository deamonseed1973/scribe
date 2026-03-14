// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "Scribe",
    platforms: [
        .macOS(.v14),
    ],
    products: [
        .library(name: "ScribeKit", targets: ["ScribeKit"]),
        .executable(name: "scribe", targets: ["scribe"]),
    ],
    dependencies: [
        .package(url: "https://github.com/argmaxinc/WhisperKit.git", from: "0.9.0"),
        .package(url: "https://github.com/apple/swift-async-algorithms.git", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-markdown.git", from: "0.4.0"),
        .package(url: "https://github.com/groue/GRDB.swift.git", from: "7.0.0"),
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.5.0"),
    ],
    targets: [
        .target(
            name: "ScribeKit",
            dependencies: [
                .product(name: "WhisperKit", package: "WhisperKit"),
                .product(name: "AsyncAlgorithms", package: "swift-async-algorithms"),
                .product(name: "Markdown", package: "swift-markdown"),
                .product(name: "GRDB", package: "GRDB.swift"),
            ]
        ),
        .executableTarget(
            name: "scribe",
            dependencies: [
                "ScribeKit",
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]
        ),
        .testTarget(
            name: "ScribeKitTests",
            dependencies: ["ScribeKit"]
        ),
    ]
)
