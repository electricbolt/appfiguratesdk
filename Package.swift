// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Appfigurate",
    platforms: [
        .iOS(.v10), .watchOS(.v3)
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
