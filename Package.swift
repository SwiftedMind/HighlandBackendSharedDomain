// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "SharedDomain",
  platforms: [.iOS(.v17), .macOS(.v13)],
  products: [
    .library(
      name: "SharedUtility",
      targets: ["SharedUtility"]
    ),
    .library(
      name: "SharedModels",
      targets: ["SharedModels"]
    ),
    .library(
      name: "SharedAPI",
      targets: ["SharedAPI"]
    )
  ],
  targets: [
    .target(name: "SharedUtility"),
    .target(name: "SharedModels", dependencies: ["SharedUtility"]),
    .target(name: "SharedAPI", dependencies: ["SharedModels"]),
  ]
)
