// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - JSON Files

// swiftlint:disable identifier_name line_length type_body_length
internal enum JSONFiles {
  internal enum Array {
    internal static let items: [String] = objectFromJSON(at: "array.json")
  }
  internal enum Configuration {
    private static let _document = JSONDocument(path: "configuration.json")
    internal static let apiVersion: String = _document["api-version"]
    internal static let country: Any? = _document["country"]
    internal static let doors: Int = _document["doors"]
    internal static let environment: String = _document["environment"]
    internal static let flags: [Bool] = _document["flags"]
    internal static let mixed: [Any] = _document["mixed"]
    internal static let mixed2: [Double] = _document["mixed2"]
    internal static let newLayout: Bool = _document["new-layout"]
    internal static let one: Int = _document["one"]
    internal static let options: [String: Any] = _document["options"]
    internal static let primes: [Int] = _document["primes"]
    internal static let quickSearch: Bool = _document["quick-search"]
    internal static let zero: Int = _document["zero"]
  }
}
// swiftlint:enable identifier_name line_length type_body_length

// MARK: - Implementation Details

private func objectFromJSON<T>(at path: String) -> T {
  guard let url = ResourcesBundle.bundle.url(forResource: path, withExtension: nil),
    let json = try? JSONSerialization.jsonObject(with: Data(contentsOf: url), options: []),
    let result = json as? T else {
    fatalError("Unable to load JSON at path: \(path)")
  }
  return result
}

private struct JSONDocument {
  let data: [String: Any]

  init(path: String) {
    self.data = objectFromJSON(at: path)
  }

  subscript<T>(key: String) -> T {
    guard let result = data[key] as? T else {
      fatalError("Property '\(key)' is not of type \(T.self)")
    }
    return result
  }
}
