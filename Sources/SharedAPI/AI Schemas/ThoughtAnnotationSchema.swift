import Foundation
import SharedModels
import SharedUtility

public struct ThoughtAnnotationSchema: Codable, Sendable {
  public var title: String
  public var events: [Event]
  public var entities: [String]
  public var keywords: [String]
  public var links: [String]
  public var sentiment: String
  public var effort: String
  
  // Traits
  public var hasShoppingListItems: Bool
  public var hasIdeas: Bool
  public var hasInquiry: Bool
  public var resolvesInquiry: Bool
  public var hasGratitude: Bool
  public var hasFear: Bool
  public var hasRegret: Bool
  public var hasHope: Bool
  public var hasExcitement: Bool
  public var hasDeadline: Bool
  public var isHumorous: Bool
  public var isBrainstorming: Bool
  public var isInspirational: Bool
  public var isMotivational: Bool
  public var isReflective: Bool
  public var isJournalEntry: Bool
  public var isNoteToSelf: Bool
  public var isMinimalContext: Bool
  public var isForFutureReference: Bool
  public var isResolvable: Bool
  public var isActionRequired: Bool
  
  public struct Event: Codable, Sendable {
    public var name: String
    public var allDay: Bool?
    public var start: String?
    public var end: String?
  }
  
  struct Entity: Codable, Sendable, Hashable {
    public var entity: String
    public var type: String
  }
}

// MARK: - Parsing

extension ThoughtAnnotationSchema.Entity {
  func parse() throws -> SharedModels.Entity {
    return .init(
      id: .init(), // Doesn't matter in backend
      kind: .init(rawValue: type) ?? .unknown,
      name: entity,
      createdAt: .now
    )
  }
}

extension ThoughtAnnotationSchema.Event {
  func parse() throws -> SharedModels.Event {
    return .init(
      id: .init(), // Doesn't matter in backend
      name: name,
      allDay: allDay,
      start: <#T##Date?#>,
      end: <#T##Date?#>
    )
  }
}

extension ThoughtAnnotationSchema {
  func parse() throws -> ThoughtAnnotation {
    return try .init(
      title: <#T##String#>,
      events: events.map { try $0.parse() },
      entities: <#T##[String]#>,
      keywords: <#T##[String]#>,
      links: <#T##[String]#>,
      sentiment: <#T##Sentiment#>,
      effort: <#T##Effort#>,
      hasShoppingListItems: <#T##Bool#>,
      hasIdeas: <#T##Bool#>,
      hasInquiry: <#T##Bool#>,
      resolvesInquiry: <#T##Bool#>,
      hasGratitude: <#T##Bool#>,
      hasFear: <#T##Bool#>,
      hasRegret: <#T##Bool#>,
      hasHope: <#T##Bool#>,
      hasExcitement: <#T##Bool#>,
      hasDeadline: <#T##Bool#>,
      isHumorous: <#T##Bool#>,
      isBrainstorming: <#T##Bool#>,
      isInspirational: <#T##Bool#>,
      isMotivational: <#T##Bool#>,
      isReflective: <#T##Bool#>,
      isJournalEntry: <#T##Bool#>,
      isNoteToSelf: <#T##Bool#>,
      isMinimalContext: <#T##Bool#>,
      isForFutureReference: <#T##Bool#>,
      isResolvable: <#T##Bool#>,
      isActionRequired: <#T##Bool#>
    )
  }
}
