/// Prefixed to avoid conflicts (and random crashes) with a `Category` typedef in the Objective-C runtime.
public enum BaseCategory: String, Codable, Sendable, Hashable {
  case note
  case reference
  case task
  case goal
  case reminder
  case idea
  case question
  case insight
  case reflection
  case problem
}
