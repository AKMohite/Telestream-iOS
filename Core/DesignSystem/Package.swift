// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "DesignSystem",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [
        .library(name: "DesignSystem", targets: ["DesignSystem"]),
    ],
    dependencies: [], // It is self-contained
    targets: [
        .target(
            name: "DesignSystem",
            dependencies: []
        )
    ]
)
