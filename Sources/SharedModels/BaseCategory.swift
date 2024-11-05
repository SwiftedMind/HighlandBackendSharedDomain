/// Prefixed to avoid conflicts (and random crashes) with a `Category` typedef in the Objective-C runtime.
public enum BaseCategory: String, Identifiable, Codable, Sendable, Hashable, CaseIterable {
  public var id: Self { self }
  case note
  case task
}
