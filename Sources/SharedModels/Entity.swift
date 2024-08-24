import Foundation

public struct Entity: Codable, Sendable {
  public var kind: EntityKind
  public var name: String
  public var createdAt: Date

  public init(kind: EntityKind, name: String, createdAt: Date) {
    self.kind = kind
    self.name = name
    self.createdAt = createdAt
  }
}

extension Entity {
  public enum EntityKind: String, Codable, Sendable {
    case place
    case location
    case project
    case generic
  }
}
