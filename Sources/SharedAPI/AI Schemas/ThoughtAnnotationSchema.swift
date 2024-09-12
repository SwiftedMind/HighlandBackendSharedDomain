import Foundation
import SharedModels
import SharedUtility

public struct ThoughtAnnotationSchema: Codable, Sendable {
  public var title: String
  public var basis: String
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
    public var type: String?
  }
}

// MARK: - Parsing

extension ThoughtAnnotationSchema.Entity {
  public func parse() throws -> SharedModels.Entity {
    var kind: Entity.Kind {
      if let type {
        return .init(rawValue: type) ?? .unknownName
      }
      return .unknownName
    }
    
    return .init(
      id: .init(),
      kind: kind,
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

    return Event(name: name, allDay: allDay ?? false, start: start, end: end)
  }
}

extension ThoughtAnnotationSchema {
  public func parse(dateFormatter: DateFormatter) throws -> ThoughtAnnotation {
    return try .init(
      title: title,
      summary: basis,
      events: events.map { try $0.parse(dateFormatter: dateFormatter) },
      entities: entities.map { try $0.parse() },
      keywords: keywords,
      links: links,
      sentiment: Sentiment(rawValue: sentiment) ?? .neutral,
      effort: Effort(rawValue: effort) ?? .none,
      tags: tags()
    )
  }
  
  private func tags() -> Set<Tag> {
    var tags: Set<Tag> = []
    
    if hasShoppingListItems {
      tags.insert(.hasShoppingListItems)
    }
    
    if hasIdeas {
      tags.insert(.hasIdeas)
    }
    
    if hasInquiry {
      tags.insert(.hasInquiry)
    }
    
    if resolvesInquiry {
      tags.insert(.resolvesInquiry)
    }
    
    if hasGratitude {
      tags.insert(.hasGratitude)
    }
    
    if hasFear {
      tags.insert(.hasFear)
    }
    
    if hasRegret {
      tags.insert(.hasRegret)
    }
    
    if hasHope {
      tags.insert(.hasHope)
    }
    
    if hasExcitement {
      tags.insert(.hasExcitement)
    }
    
    if hasDeadline {
      tags.insert(.hasDeadline)
    }
    
    if isHumorous {
      tags.insert(.isHumorous)
    }
    
    if isBrainstorming {
      tags.insert(.isBrainstorming)
    }
    
    if isInspirational {
      tags.insert(.isInspirational)
    }
    
    if isMotivational {
      tags.insert(.isMotivational)
    }
    
    if isReflective {
      tags.insert(.isReflective)
    }
    
    if isJournalEntry {
      tags.insert(.isJournalEntry)
    }
    
    if isNoteToSelf {
      tags.insert(.isNoteToSelf)
      
    }
    if isMinimalContext {
      tags.insert(.isMinimalContext)
    }
    
    if isForFutureReference {
      tags.insert(.isForFutureReference)
    }
    
    if isResolvable {
      tags.insert(.isResolvable)
      
    }
    if isActionRequired {
      tags.insert(.isActionRequired)
    }
    
    return tags
  }
}
