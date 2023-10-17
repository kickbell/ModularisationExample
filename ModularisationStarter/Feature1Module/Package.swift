// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Feature1Module",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Feature1Module",
            targets: ["FeatureModule1UI", "Feature1Implementations"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "FeatureModule1UI",
            dependencies: ["Feature1Presentation"]),
        .target(
            name: "Feature1Presentation",
            dependencies: ["Feature1"]),
        .target(
            name: "Feature1",
            dependencies: []),
        .target(
            name: "Feature1Implementations",
            dependencies: ["Feature1"]),
        .testTarget(
            name: "Feature1ModuleTests",
            dependencies: ["FeatureModule1UI"]),
    ]
)
