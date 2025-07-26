// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DiscoverUI",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [
        .library(name: "DiscoverUI", targets: ["DiscoverUI"]),
    ],
    dependencies: [
        // Features depend on our Core layers
        .package(path: "../../Core/DataLayer"),
        .package(path: "../../Core/DomainLayer"),
        .package(path: "../../Core/DesignSystem")
    ],
    targets: [
        .target(
            name: "DiscoverUI",
            dependencies: ["DataLayer", "DomainLayer", "DesignSystem"]
        ),
        .testTarget(
            name: "DiscoverUITests",
            dependencies: ["DiscoverUI"]
        ),
    ]
)
