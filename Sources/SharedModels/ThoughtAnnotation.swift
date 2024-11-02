import Foundation

public struct ThoughtAnnotation: Codable, Sendable, Hashable {
  public var basis: String
  public var title: String
  public var events: [Event]
  public var entities: [Entity]
  public var links: [String]
  public var tags: [Tag]
  public var category: BaseCategory
  public var status: Status?
  public var sentiment: Sentiment
  public var emotionalIntensity: EmotionalIntensity
  public var timeframe: Timeframe
  public var priority: Priority
  public var clarity: Clarity
  public var effort: Effort
  public var complexity: Complexity
  
  public init(
    basis: String,
    title: String,
    events: [Event],
    entities: [Entity],
    links: [String],
    tags: [Tag],
    category: BaseCategory,
    status: Status?,
    sentiment: Sentiment,
    emotionalIntensity: EmotionalIntensity,
    timeframe: Timeframe,
    priority: Priority,
    clarity: Clarity,
    effort: Effort,
    complexity: Complexity
  ) {
    self.basis = basis
    self.title = title
    self.events = events
    self.entities = entities
    self.links = links
    self.tags = tags
    self.category = category
    self.status = status
    self.sentiment = sentiment
    self.emotionalIntensity = emotionalIntensity
    self.timeframe = timeframe
    self.priority = priority
    self.clarity = clarity
    self.effort = effort
    self.complexity = complexity
  }
}
