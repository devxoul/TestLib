// swift-tools-version:3.1

import PackageDescription
import Foundation

var excludes: [String] = [
  "Sources/RxTest"
]

if let raw = getenv("TEST"), String(validatingUTF8: raw) != nil {
  if let i = excludes.index(of: "Sources/RxTest") {
    excludes.remove(at: i)
  }
}

let package = Package(
  name: "TestLib",
  exclude: excludes
)
