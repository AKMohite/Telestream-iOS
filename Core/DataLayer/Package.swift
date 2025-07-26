// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "DataLayer",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [
        .library(name: "DataLayer", targets: ["DataLayer"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.8.1")),
        .package(path: "../DomainLayer")
    ],
    targets: [
        .target(
            name: "DataLayer",
            dependencies: ["Alamofire", "DomainLayer"]
        )
    ]
)
