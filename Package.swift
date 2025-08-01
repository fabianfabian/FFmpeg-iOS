// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "FFmpeg-iOS",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "FFmpeg-iOS",
            targets: [
                "avcodec", "avutil", "avformat", "avfilter", "avdevice", "swscale", "swresample",
                "fftools", "Dummy",
            ]),
    ],
    dependencies: [
        .package(url: "https://github.com/kewlbear/FFmpeg-iOS-Support", from: "0.0.1"),
    ],
    targets: [
        .binaryTarget(name: "avcodec", url: "https://github.com/fabianfabian/FFmpeg-iOS/releases/download/0.0.6-c/avcodec.zip", checksum: "cbd657be46e02690fe4c41937e247e0cd59bfea6f111b63aaf5f43e286684a35"),
        .binaryTarget(name: "avutil", url: "https://github.com/fabianfabian/FFmpeg-iOS/releases/download/0.0.6-c/avutil.zip", checksum: "08d75cc407d7a03d6e4831651e2d717e7f0233303234657766200d80cfba3fe7"),
        .binaryTarget(name: "avformat", url: "https://github.com/fabianfabian/FFmpeg-iOS/releases/download/0.0.6-c/avformat.zip", checksum: "f61744280b63a81b8bac2a41a87ff2c2718aa8357d42c59286691332a5020f67"),
        .binaryTarget(name: "avfilter", url: "https://github.com/fabianfabian/FFmpeg-iOS/releases/download/0.0.6-c/avfilter.zip", checksum: "a9050ba75b63a957edcdf2837030c7c3ae97c0d0371efe822df9b0d80ee997ab"),
        .binaryTarget(name: "avdevice", url: "https://github.com/fabianfabian/FFmpeg-iOS/releases/download/0.0.6-c/avdevice.zip", checksum: "512cb569d23b76a59f5359fd1cbc8da5c7aa9963c7d4466197d62a40804a99be"),
        .binaryTarget(name: "swscale", url: "https://github.com/fabianfabian/FFmpeg-iOS/releases/download/0.0.6-c/swscale.zip", checksum: "308ce25786261bc1ab8fd7b606059874ca452e5332f82d80cf77abe02c0654fc"),
        .binaryTarget(name: "swresample", url: "https://github.com/fabianfabian/FFmpeg-iOS/releases/download/0.0.6-c/swresample.zip", checksum: "0cbf36bb6ab22e9cc15faff98881d31498196114e8e3327f987a36033f05dcce"),
        .binaryTarget(name: "fftools", url: "https://github.com/fabianfabian/FFmpeg-iOS/releases/download/0.0.6-c/fftools.zip", checksum: "fa889eb4bb7f89c738083714f859a4747d9975fe20e6a79b8b767bb27a7dda36"),
        .target(name: "Dummy", dependencies: [
            "fftools",
            "avcodec", "avformat", "avfilter", "avdevice", "avutil", "swscale", "swresample",
            "FFmpeg-iOS-Support",
        ]),
        .testTarget(name: "FFmpeg-iOSTests",
                    dependencies: ["Dummy",]),
    ]
)
