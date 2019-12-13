// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AnalyticsAmplitude",
    products: [
        .library(
            name: "AnalyticsAmplitude",
            targets: ["AnalyticsAmplitude"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/amplitude/Amplitude-iOS",
            Version(4, 9, 3)..<Version(5, 0, 0)),
        .package(
            url: "https://github.com/Polarrco/analytics-ios",
            .branch("master"))
    ],
    targets: [
        .target(
            name: "AnalyticsAmplitude",
            path: "Pod",
            cSettings: [
            .headerSearchPath("Classes"),
        ]),
    ]
)
