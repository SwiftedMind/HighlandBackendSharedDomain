import Foundation

public struct Event: Identifiable, Codable, Sendable, Hashable {
  public var id: UUID
  public var name: String
  public var allDay: Bool
  public var date: Date

  public init(id: UUID = .init(), name: String, allDay: Bool, date: Date) {
    self.id = id
    self.name = name
    self.allDay = allDay
    self.date = date
  }
}
