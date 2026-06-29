// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "M3u8PlayerSiteKit",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "M3u8PlayerSiteKit",
            targets: ["M3u8PlayerSiteKit"]
        )
    ],
    targets: [
        .target(name: "M3u8PlayerSiteKit"),
        .testTarget(
            name: "M3u8PlayerSiteKitTests",
            dependencies: ["M3u8PlayerSiteKit"]
        )
    ]
)
