// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Feature2Module",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Feature2Module",
            targets: ["FeatureModule2UI", "Feature2Implementations"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "FeatureModule2UI",
            dependencies: ["Feature2Presentation"]),
        .target(
            name: "Feature2Presentation",
            dependencies: ["Feature2"]),
        .target(
            name: "Feature2",
            dependencies: []),
        .target(
            name: "Feature2Implementations",
            dependencies: ["Feature2"]),
        .testTarget(
            name: "Feature2ModuleTests",
            dependencies: ["FeatureModule2UI"]),
    ]
)
