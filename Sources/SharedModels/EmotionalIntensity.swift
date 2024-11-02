import Foundation

public enum EmotionalIntensity: String, Identifiable, Sendable, Codable, Hashable, CaseIterable {
  public var id: Self { self }

  case neutral
  case mild
  case moderate
  case strong
}
