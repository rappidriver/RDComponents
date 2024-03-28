// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RDComponents",
    platforms: [
        .iOS(.v13) // Defina a versão mínima do iOS conforme necessário
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "RDComponents",
            targets: ["RDComponents"]),
    ],
    dependencies: [
        // Adicione UIKit como dependência
        // .package(url: "https://github.com/apple/swift-ui.git", .upToNextMajor(from: "1.0.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "RDComponents"),
        .testTarget(
            name: "RDComponentsTests",
            dependencies: ["RDComponents"]),
    ]
)
