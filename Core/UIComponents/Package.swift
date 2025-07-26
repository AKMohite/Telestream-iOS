// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "UIComponents",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [
        .library(name: "UIComponents", targets: ["UIComponents"]),
    ],
    dependencies: [
        // Our components need to work with our business models.
        .package(path: "../DomainLayer"),
        // The best library for downloading and caching images from URLs.
        .package(url: "https://github.com/onevcat/Kingfisher.git", .upToNextMajor(from: "7.0.0"))
    ],
    targets: [
        .target(
            name: "UIComponents",
            dependencies: [
                "DomainLayer",
                "Kingfisher"
            ]
        )
    ]
)
