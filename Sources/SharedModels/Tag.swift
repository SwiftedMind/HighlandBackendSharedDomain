import Foundation

public enum Tag: String, Hashable, Sendable, Codable, Identifiable, CaseIterable {
  public var id: Self { self }
  case groceries
  case wishList
  case habit
  case inspiration
  case gratitude
}
  
