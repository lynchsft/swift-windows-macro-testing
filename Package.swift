// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftWindowsPackageTesting",
    platforms: [.macOS(.v10_15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftWindowsPackageTesting",
            targets: ["SwiftWindowsPackageTesting"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/kishikawakatsumi/swift-power-assert.git",
            from: "0.12.0"
        ),
        .package(url: "https://github.com/apple/swift-syntax.git", from: "509.0.2"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SwiftWindowsPackageTesting",
            dependencies: [
                .product(name: "PowerAssert", package: "swift-power-assert"),
            ]
        ),
        .testTarget(
            name: "SwiftWindowsPackageTestingTests",
            dependencies: ["SwiftWindowsPackageTesting",
                           .product(name: "SwiftSyntaxMacrosTestSupport", package: "swift-syntax"),
                           .product(name: "SwiftCompilerPlugin", package: "swift-syntax")]),
    ]
)
