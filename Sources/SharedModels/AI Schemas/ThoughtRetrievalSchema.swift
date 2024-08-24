// By Dennis Müller

import Foundation

public struct ThoughtRetrievalSchema: Codable, Sendable {
  public var purpose: String
  public var events: [Event]
  public var entities: [Entity]
  
  // Properties
  public var sentiment: String
  public var isReminder: Bool
  public var requiresAction: Bool
  public var insufficientInformation: Bool
  
  public var previousThoughts: [Int]
  
  public init(
    purpose: String,
    events: [Event],
    entities: [Entity],
    sentiment: String,
    isReminder: Bool,
    requiresAction: Bool,
    insufficientInformation: Bool,
    previousThoughts: [Int]
  ) {
    self.purpose = purpose
    self.events = events
    self.entities = entities
    self.sentiment = sentiment
    self.isReminder = isReminder
    self.requiresAction = requiresAction
    self.insufficientInformation = insufficientInformation
    self.previousThoughts = previousThoughts
  }
  
  public struct Event: Codable, Sendable {
    public var name: String
    public var date: String
    
    public init(name: String, date: String) {
      self.name = name
      self.date = date
    }
  }
  
  public struct Entity: Codable, Sendable {
    public var kind: String
    public var name: String
    
    public init(kind: String, name: String) {
      self.kind = kind
      self.name = name
    }
  }
}
