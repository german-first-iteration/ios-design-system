// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "DesignSystem",
  platforms: [
    .iOS(.v13)
  ],
  products: [
    .library(
      name: "DesignSystem",
      targets: ["DesignSystem"]),
  ],
  targets: [
    .target(
      name: "DesignSystem",
      resources: [
        .process("Resources/Colors.xcassets"),
        .process("Resources/Roboto")
      ]
    ),
    .testTarget(
      name: "DesignSystemTests",
      dependencies: ["DesignSystem"]
    ),
  ]
)
