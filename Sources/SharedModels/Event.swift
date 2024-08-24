import Foundation

public struct Event: Codable, Sendable, Hashable {
  public var name: String
  public var date: String

  public init(name: String, date: String) {
    self.name = name
    self.date = date
  }
}
