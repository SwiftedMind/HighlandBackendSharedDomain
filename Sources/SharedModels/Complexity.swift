import Foundation

public enum Complexity: String, Identifiable, Sendable, Codable, Hashable, CaseIterable {
  public var id: Self { self }
  case simple
  case moderate
  case complex
}
