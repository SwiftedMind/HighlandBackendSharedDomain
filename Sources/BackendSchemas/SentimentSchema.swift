import Foundation

public enum SentimentSchema: String, Identifiable, Sendable, Codable, Hashable, CaseIterable {
  public var id: Self { self }

  case negative
  case neutral
  case positive
}
