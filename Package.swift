// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Appfigurate",
    platforms: [
        .iOS(.v15), .watchOS(.v5)
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
