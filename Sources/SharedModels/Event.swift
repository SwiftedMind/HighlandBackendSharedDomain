import Foundation

public struct Event: Codable, Sendable, Hashable {
  public var name: String
  public var allDay: Bool
  public var date: Date

  public init(name: String, allDay: Bool, date: Date) {
    self.name = name
    self.allDay = allDay
    self.date = date
  }
}
