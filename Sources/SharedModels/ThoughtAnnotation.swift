import Foundation

public struct ThoughtAnnotation: Codable, Sendable, Hashable {
  public var title: String
  public var basis: String
  public var purpose: Purpose
  public var keywords: [String]
  public var events: [Event]
  public var entities: [Entity]

  // Properties
  public var sentiment: Sentiment
  public var isReminder: Bool
  public var requiresAction: Bool
  public var insufficientInformation: Bool

  public init(
    title: String,
    basis: String,
    purpose: Purpose,
    keywords: [String],
    events: [Event],
    entities: [Entity],
    sentiment: Sentiment,
    isReminder: Bool,
    requiresAction: Bool,
    insufficientInformation: Bool
  ) {
    self.title = title
    self.basis = basis
    self.purpose = purpose
    self.keywords = keywords
    self.events = events
    self.entities = entities
    self.sentiment = sentiment
    self.isReminder = isReminder
    self.requiresAction = requiresAction
    self.insufficientInformation = insufficientInformation
  }
}
