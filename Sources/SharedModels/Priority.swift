import Foundation

public enum Priority: String, Hashable, Sendable, Codable, Identifiable, CaseIterable {
  public var id: Self { self }
  case low
  case medium
  case high
  case urgent
}
  
