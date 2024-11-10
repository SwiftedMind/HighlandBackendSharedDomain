import Foundation

public enum Status: String, Identifiable, Codable, Sendable, CaseIterable, Hashable {
  public var id: Self { self }
  case active
  case completed
  case abandoned
  case pending
}
