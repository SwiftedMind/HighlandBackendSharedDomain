import Foundation

public struct Event: Codable, Sendable, Hashable {
  public var name: String
  public var day: String?
  public var time: String?

  public init(name: String, day: String? = nil, time: String? = nil) {
    self.name = name
    self.day = day
    self.time = time
  }
}
