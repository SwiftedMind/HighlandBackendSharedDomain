import Foundation

public enum Effort: String, Identifiable, Sendable, Codable, Hashable, CaseIterable {
  public var id: Self { self }
  case low
  case medium
  case high
}
