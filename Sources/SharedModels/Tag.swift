import Foundation

public enum Tag: String, Hashable, Sendable, Codable, Identifiable, CaseIterable {
  case hasLinks
  case hasShoppingListItems
  case hasIdeas
  case hasInquiry
  case resolvesInquiry
  case hasGratitude
  case hasFear
  case hasRegret
  case hasHope
  case hasExcitement
  case hasDeadline
  case isHumorous
  case isBrainstorming
  case isInspirational
  case isMotivational
  case isReflective
  case isJournalEntry
  case isNoteToSelf
  case isMinimalContext
  case isForFutureReference
  case isResolvable
  case isActionRequired
  
  public var id: Self {
    self
  }
}
