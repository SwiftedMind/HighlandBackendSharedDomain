import Foundation

public struct ThoughtAnnotation: Codable, Sendable, Hashable {
  public var basis: String
  public var title: String
  public var keywords: [String]
  public var events: [Event]
  public var locations: [String]
  public var entities: [String]

  // Properties
  public var sentiment: Sentiment
  public var effort: Effort
  public var hasQuestions: Bool
  public var hasLinks: Bool
  public var hasQuotes: Bool
  public var hasIdeas: Bool
  public var isJournalEntry: Bool
  public var isReminder: Bool
  public var needsResolution: Bool
  public var insufficientInformation: Bool

  public init(
    basis: String,
    title: String,
    keywords: [String],
    events: [Event],
    locations: [String],
    entities: [String],
    sentiment: Sentiment,
    effort: Effort,
    hasQuestions: Bool,
    hasLinks: Bool,
    hasQuotes: Bool,
    hasIdeas: Bool,
    isJournalEntry: Bool,
    isReminder: Bool,
    needsResolution: Bool,
    insufficientInformation: Bool
  ) {
    self.basis = basis
    self.title = title
    self.keywords = keywords
    self.events = events
    self.locations = locations
    self.entities = entities
    self.sentiment = sentiment
    self.effort = effort
    self.hasQuestions = hasQuestions
    self.hasLinks = hasLinks
    self.hasQuotes = hasQuotes
    self.hasIdeas = hasIdeas
    self.isJournalEntry = isJournalEntry
    self.isReminder = isReminder
    self.needsResolution = needsResolution
    self.insufficientInformation = insufficientInformation
  }
}
