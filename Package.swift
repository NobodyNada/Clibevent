// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Clibevent",
    products: [
        .library(name: "Clibevent", targets: ["Clibevent"])
    ],
    targets: [
        .systemLibrary(
            name: "Clibevent",
            pkgConfig: "libvent",
            providers: [.brew(["libevent"]), .apt(["libevent-dev"])]
        )
    ]
)
