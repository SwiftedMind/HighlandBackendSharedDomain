import Foundation

public enum Timeframe: String, Hashable, Sendable, Codable, Identifiable, CaseIterable {
  public var id: Self { self }
  case immediate
  case short
  case long
  case scheduled
  case deadline
}
  
