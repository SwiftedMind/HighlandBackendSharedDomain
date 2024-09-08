import Foundation

public struct ThoughtAnnotation: Codable, Sendable, Hashable {
  public var title: String
  public var events: [Event]
  public var entities: [String]
  public var keywords: [String]
  public var links: [String]
  public var sentiment: Sentiment
  public var effort: Effort

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
  
  public init(
    title: String,
    events: [Event],
    entities: [String],
    keywords: [String],
    links: [String],
    sentiment: Sentiment,
    effort: Effort,
    hasShoppingListItems: Bool,
    hasIdeas: Bool,
    hasInquiry: Bool,
    resolvesInquiry: Bool,
    hasGratitude: Bool,
    hasFear: Bool,
    hasRegret: Bool,
    hasHope: Bool,
    hasExcitement: Bool,
    hasDeadline: Bool,
    isHumorous: Bool,
    isBrainstorming: Bool,
    isInspirational: Bool,
    isMotivational: Bool,
    isReflective: Bool,
    isJournalEntry: Bool,
    isNoteToSelf: Bool,
    isMinimalContext: Bool,
    isForFutureReference: Bool,
    isResolvable: Bool,
    isActionRequired: Bool
  ) {
    self.title = title
    self.events = events
    self.entities = entities
    self.keywords = keywords
    self.links = links
    self.sentiment = sentiment
    self.effort = effort
    self.hasShoppingListItems = hasShoppingListItems
    self.hasIdeas = hasIdeas
    self.hasInquiry = hasInquiry
    self.resolvesInquiry = resolvesInquiry
    self.hasGratitude = hasGratitude
    self.hasFear = hasFear
    self.hasRegret = hasRegret
    self.hasHope = hasHope
    self.hasExcitement = hasExcitement
    self.hasDeadline = hasDeadline
    self.isHumorous = isHumorous
    self.isBrainstorming = isBrainstorming
    self.isInspirational = isInspirational
    self.isMotivational = isMotivational
    self.isReflective = isReflective
    self.isJournalEntry = isJournalEntry
    self.isNoteToSelf = isNoteToSelf
    self.isMinimalContext = isMinimalContext
    self.isForFutureReference = isForFutureReference
    self.isResolvable = isResolvable
    self.isActionRequired = isActionRequired
  }
}
