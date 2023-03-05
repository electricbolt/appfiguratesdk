// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Appfigurate",
    platforms: [
        .iOS(.v13), .watchOS(.v5)
    ],
    products: [
        .library(
            name: "AppfigurateLibrary",
            targets: ["AppfigurateLibrary"])
    ],
    targets: [
        .binaryTarget(
            name: "AppfigurateLibrary",
            path: "AppfigurateLibrary.xcframework"
        )
    ]
)
