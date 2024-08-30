import Foundation
import SharedModels
import SharedUtility

public struct ThoughtAnnotationSchema: Codable, Sendable {
  public var basis: String
  public var title: String
  public var keywords: [String]
  public var dates: [Event]
  public var locations: [String]
  public var entities: [String]
  
  // Properties
  public var sentiment: String
  public var effort: String
  public var hasQuestions: Bool
  public var hasLinks: Bool
  public var hasQuotes: Bool
  public var hasIdeas: Bool
  public var isJournalEntry: Bool
  public var isReminder: Bool
  public var needsResolution: Bool
  public var insufficientInformation: Bool
  
  public struct Event: Codable, Sendable {
    public var event: String
    public var day: String?
    public var time: String?
    
    public init(event: String, day: String?, time: String?) {
      self.event = event
      self.day = day
      self.time = time
    }
  }
}

extension ThoughtAnnotationSchema.Event {
  func parse() throws {
    
  }
}
