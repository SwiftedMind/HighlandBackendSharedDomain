import Foundation

public struct AnnotatedThoughtSchema: Codable, Sendable {
  public var title: String
  public var basis: String
  public var purpose: PurposeSchema
  public var events: [EventSchema]
  public var entities: [EntitySchema]

  // Properties
  public var sentiment: SentimentSchema
  public var isReminder: Bool
  public var requiresAction: Bool
  public var insufficientInformation: Bool

  public init(
    title: String,
    basis: String,
    purpose: PurposeSchema,
    events: [EventSchema],
    entities: [EntitySchema],
    sentiment: SentimentSchema,
    isReminder: Bool,
    requiresAction: Bool,
    insufficientInformation: Bool
  ) {
    self.title = title
    self.basis = basis
    self.purpose = purpose
    self.events = events
    self.entities = entities
    self.sentiment = sentiment
    self.isReminder = isReminder
    self.requiresAction = requiresAction
    self.insufficientInformation = insufficientInformation
  }
}
