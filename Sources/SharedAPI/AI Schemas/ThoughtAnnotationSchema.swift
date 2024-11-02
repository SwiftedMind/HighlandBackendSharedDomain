import Foundation
import SharedModels
import SharedUtility

public struct ThoughtAnnotationSchema: Codable, Sendable {
  public var basis: String
  public var title: String
  public var events: [Event]
  public var entities: [Entity]
  public var links: [String]
  public var tags: [Tag]
  public var category: String
  public var status: String?
  public var sentiment: String
  public var emotionalIntensity: String
  public var timeframe: String
  public var priority: String
  public var clarity: String
  public var effort: String
  public var complexity: String
  
  public init(
    basis: String,
    title: String,
    events: [Event],
    entities: [Entity],
    links: [String],
    tags: [Tag],
    category: String,
    status: String?,
    sentiment: String,
    emotionalIntensity: String,
    timeframe: String,
    priority: String,
    clarity: String,
    effort: String,
    complexity: String
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
      basis: basis,
      title: title,
      events: events.map { try $0.parse(dateFormatter: dateFormatter) },
      entities: entities.map { try $0.parse() },
      links: links,
      tags: tags,
      category: BaseCategory(rawValue: category) ?? .note,
      status: Status(rawValue: status ?? ""),
      sentiment: Sentiment(rawValue: sentiment) ?? .neutral,
      emotionalIntensity: EmotionalIntensity(rawValue: emotionalIntensity) ?? .neutral,
      timeframe: Timeframe(rawValue: timeframe) ?? .long,
      priority: Priority(rawValue: priority) ?? .low,
      clarity: Clarity(rawValue: clarity) ?? .clear,
      effort: Effort(rawValue: effort) ?? .low,
      complexity: Complexity(rawValue: complexity) ?? .simple
    )
  }
}
