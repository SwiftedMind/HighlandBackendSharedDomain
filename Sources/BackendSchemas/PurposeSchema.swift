import Foundation

public enum PurposeSchema: String, Identifiable, Sendable, Codable, Hashable, CaseIterable {
  public var id: Self { self }

  case task
  case ideation
  case introspection
  case inquiry
  case information
  case evaluation
}
