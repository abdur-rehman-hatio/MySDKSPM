// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MySDKSPM",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "MySDKSPM",
            targets: ["MySDKSPM"]),
    ],
    dependencies: [
        .package(url: "https://github.com/elai950/AlertToast", from: "1.3.9")
    ],
    targets: [
        .target(
            name: "MySDKSPM",
            dependencies: [
                .target(name: "MySDK"),
                .product(name: "AlertToast", package: "AlertToast")
            ]
        ),
        .testTarget(
            name: "MySDKSPMTests",
            dependencies: ["MySDKSPM"]
        ),
        .binaryTarget(
            name: "MySDK",
            path: "Sources/MySDK.xcframework"
        )
    ]
)
