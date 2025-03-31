// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IOSDesignSystem",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "IOSDesignSystem",
            targets: ["IOSDesignSystem"]),
    ],
    targets: [
        .target(
            name: "IOSDesignSystem"),
        .testTarget(
            name: "IOSDesignSystemTests",
            dependencies: ["IOSDesignSystem"]
        ),
    ]
)
