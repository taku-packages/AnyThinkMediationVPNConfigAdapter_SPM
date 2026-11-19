// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "AnyThinkMediationVPNConfigAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AnyThinkMediationVPNConfigAdapter",
            targets: ["AnyThinkMediationVPNConfigAdapterTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/taku-packages/AnyThinkiOS_SPM.git", from: "6.5.60")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkVPNConfigAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkVPNConfigAdapter/10.0.0/AnyThinkVPNConfigAdapter-10.0.0.zip",
            checksum: "aef21bbe3d03908935eec40b2e8f41fe9c1c1304ee547c5275095ccfba62bca4"
        ),
        .target(
            name: "AnyThinkMediationVPNConfigAdapterTarget",
            dependencies: [
                "AnyThinkVPNConfigAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM")
            ],
            path: "Sources/AnyThinkMediationVPNConfigAdapterTarget"
        )
    ]
)