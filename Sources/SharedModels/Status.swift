import Foundation

public enum Status: String, Identifiable, Codable, Sendable, Hashable {
  public var id: Self { self }
  case active
  case completed
  case abandoned
  case pending
}
