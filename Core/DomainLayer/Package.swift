// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "DomainLayer",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [
        .library(name: "DomainLayer", targets: ["DomainLayer"]),
    ],
    dependencies: [
        // This module has NO external dependencies. It is the core.
    ],
    targets: [
        .target(
            name: "DomainLayer",
            dependencies: []
        )
    ]
)
