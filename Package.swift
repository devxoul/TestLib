// swift-tools-version:3.1

import PackageDescription
import Foundation

var targets = [
  Target(name: "TestLibA", dependencies: [])
]

// if let raw = getenv("TEST"), String(validatingUTF8: raw) != nil {
//   targets.append(Target(name: "TestLibB", dependencies: []))
// }

let package = Package(
  name: "TestLib",
  targets: targets
)
