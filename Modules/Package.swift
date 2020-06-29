// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Modules",

    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "Networking", targets: ["Networking"]),
        .library(name: "UseCases", targets: ["UseCases"]),
        .library(name: "Views", targets: ["Views"]),
        .library(name: "Fonts", targets: ["Fonts"]),
        .library(name: "Themes", targets: ["Themes"]),
        .library(name: "Colors", targets: ["Colors"]),
    ],

    dependencies: [
//        .package(url: "git@github.com:airbnb/lottie-ios.git", .upToNextMajor(from: "3.1.8")),
//        .package(url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: "14.0.0")),
    ],

    targets: [
        .target(name: "Networking", dependencies: []),
        .testTarget(name: "NetworkingTests", dependencies: ["Networking"]),

        .target(name: "UseCases", dependencies: []),
        .testTarget(name: "UseCasesTests", dependencies: ["UseCases"]),

        .target(name: "Views", dependencies: []),
        .testTarget(name: "ViewsTests", dependencies: ["Views"]),

        .target(name: "Fonts", dependencies: []),
        .testTarget(name: "FontsTests", dependencies: ["Fonts"]),

        .target(name: "Themes", dependencies: []),
        .testTarget(name: "ThemesTests", dependencies: ["Themes"]),

        .target(name: "Colors", dependencies: []),
        .testTarget(name: "ColorsTests", dependencies: ["Colors"]),
    ]
)
