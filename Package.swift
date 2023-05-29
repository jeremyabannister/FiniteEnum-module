// swift-tools-version: 5.8

///
import PackageDescription

///
let package = Package(
    name: "FiniteEnum-module",
    products: [
        .library(
            name: "FiniteEnum-module",
            targets: ["FiniteEnum-module"]
        ),
    ],
    dependencies: [
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/ProperValueType-module",
            "0.1.1" ..< "0.2.0"
        )
    ],
    targets: [
        
        ///
        .target(
            name: "FiniteEnum-module",
            dependencies: [
                "ProperValueType-module",
            ]
        ),
        
        ///
        .testTarget(
            name: "FiniteEnum-tests",
            dependencies: [
                "FiniteEnum-module",
            ]
        ),
    ]
)
