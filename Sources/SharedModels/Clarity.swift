import Foundation

public enum Clarity: String, Hashable, Sendable, Codable, Identifiable, CaseIterable {
  public var id: Self { self }
  case clear
  case draft
  case vague
}
  
