// swift-tools-version:5.3
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
            pkgConfig: "libevent",
            providers: [.brew(["libevent"]), .apt(["libevent-dev"])]
        )
    ]
)
