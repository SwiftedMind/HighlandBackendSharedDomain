import Foundation

public enum Tag: String, Hashable, Sendable, Codable, Identifiable, CaseIterable {
  public var id: Self { self }
  case reference
  case idea
  case question
  case insight
  case reflection
  case shopping
  case inspiration
  case gratitude
}
  
