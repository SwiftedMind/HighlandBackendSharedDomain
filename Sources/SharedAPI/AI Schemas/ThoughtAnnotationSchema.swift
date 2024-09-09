import Foundation
import SharedModels
import SharedUtility

public struct ThoughtAnnotationSchema: Codable, Sendable {
  public var title: String
  public var events: [Event]
  public var entities: [Entity]
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

  public struct Entity: Codable, Sendable, Hashable {
    public var entity: String
    public var type: String
  }
}

// MARK: - Parsing

extension ThoughtAnnotationSchema.Entity {
  public func parse() throws -> SharedModels.Entity {
    return .init(
      id: .init(),  // Doesn't matter in backend
      kind: .init(rawValue: type) ?? .unknown,
      name: entity,
      createdAt: .now
    )
  }
}

extension ThoughtAnnotationSchema.Event {
  public func parse(dateFormatter: DateFormatter) throws -> SharedModels.Event {
    var start: Date?
    var end: Date?

    if let rawStart = self.start {
      start = dateFormatter.date(from: rawStart)
    }

    if let rawEnd = self.end {
      end = dateFormatter.date(from: rawEnd)
    }

    return Event(name: name, allDay: allDay, start: start, end: end)
  }
}

extension ThoughtAnnotationSchema {
  public func parse(dateFormatter: DateFormatter) throws -> ThoughtAnnotation {
    return try .init(
      title: title,
      events: events.map { try $0.parse(dateFormatter: dateFormatter) },
      entities: entities.map { try $0.parse() },
      keywords: keywords,
      links: links,
      sentiment: Sentiment(rawValue: sentiment) ?? .neutral,
      effort: Effort(rawValue: effort) ?? .none,
      hasShoppingListItems: hasShoppingListItems,
      hasIdeas: hasIdeas,
      hasInquiry: hasInquiry,
      resolvesInquiry: resolvesInquiry,
      hasGratitude: hasGratitude,
      hasFear: hasFear,
      hasRegret: hasRegret,
      hasHope: hasHope,
      hasExcitement: hasExcitement,
      hasDeadline: hasDeadline,
      isHumorous: isHumorous,
      isBrainstorming: isBrainstorming,
      isInspirational: isInspirational,
      isMotivational: isMotivational,
      isReflective: isReflective,
      isJournalEntry: isJournalEntry,
      isNoteToSelf: isNoteToSelf,
      isMinimalContext: isMinimalContext,
      isForFutureReference: isForFutureReference,
      isResolvable: isResolvable,
      isActionRequired: isActionRequired
    )
  }
}
