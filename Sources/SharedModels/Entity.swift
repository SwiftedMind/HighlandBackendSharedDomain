import Foundation

public struct Entity: Identifiable, Codable, Sendable, Hashable {
  public var id: UUID
  public var kind: Kind
  public var name: String
  public var createdAt: Date

  public init(
    id: UUID = .init(),
    kind: Kind,
    name: String,
    createdAt: Date = .now
  ) {
    self.id = id
    self.kind = kind
    self.name = name
    self.createdAt = createdAt
  }
}

extension Entity {
  public enum Kind: String, Codable, Sendable, Hashable {
    case personalName
    case placeName
    case organizationName
    case project
    case product
    case event
    case unknown
  }
}
