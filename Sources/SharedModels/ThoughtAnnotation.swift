import Foundation

public struct ThoughtAnnotation: Codable, Sendable, Hashable {
  public var title: String
  public var events: [Event]
  public var entities: [Entity]
  public var keywords: [String]
  public var links: [String]
  public var sentiment: Sentiment
  public var effort: Effort
  public var tags: Set<Tag>
  
  public init(
    title: String,
    events: [Event],
    entities: [Entity],
    keywords: [String],
    links: [String],
    sentiment: Sentiment,
    effort: Effort,
    tags: Set<Tag>
  ) {
    self.title = title
    self.events = events
    self.entities = entities
    self.keywords = keywords
    self.links = links
    self.sentiment = sentiment
    self.effort = effort
    self.tags = tags
  }
}
