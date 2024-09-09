import Foundation

public struct Event: Identifiable, Codable, Sendable, Hashable {
  public var id: UUID
  public var name: String
  public var allDay: Bool
  public var start: Date?
  public var end: Date?

  public init(
    id: UUID = .init(),
    name: String,
    allDay: Bool,
    start: Date?,
    end: Date?
  ) {
    self.id = id
    self.name = name
    self.allDay = allDay
    self.start = start
    self.end = end
  }
}
