import Foundation

public enum Sentiment: String, Identifiable, Sendable, Codable, Hashable, CaseIterable {
  public var id: Self { self }

  case negative
  case neutral
  case positive
  case mixed
}
