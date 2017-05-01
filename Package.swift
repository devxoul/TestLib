// swift-tools-version:3.1

import PackageDescription
import Darwin

var excludes: [String] = [
  "Sources/RxTest"
]

if getenv("TEST") != nil {
  if let i = excludes.index(of: "Sources/RxTest") {
    excludes.remove(at: i)
  }
}

let package = Package(
  name: "TestLib",
  exclude: excludes
)
