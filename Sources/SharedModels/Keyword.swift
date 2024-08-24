import Foundation

public struct Keyword: Identifiable, Codable, Sendable, Hashable {

  public var id: UUID
  public var name: String
  public var createdAt: Date

  public init(
    id: UUID = .init(),
    name: String,
    createdAt: Date = .now
  ) {
    self.id = id
    self.name = name
    self.createdAt = createdAt
  }
}
