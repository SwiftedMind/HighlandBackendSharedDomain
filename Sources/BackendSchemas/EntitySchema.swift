import Foundation

public struct EntitySchema: Codable, Sendable {
  public var kind: EntityKindSchema
  public var name: String

  public init(kind: EntityKindSchema, name: String) {
    self.kind = kind
    self.name = name
  }
}
