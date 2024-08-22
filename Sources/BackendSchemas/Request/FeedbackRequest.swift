import Foundation

public struct FeedbackRequest: Codable, Sendable {
  public var feedback: FeedbackDataSchema

  public init(feedback: FeedbackDataSchema) {
    self.feedback = feedback
  }
}
