import Foundation
import SharedModels

public struct FeedbackRequest: Codable, Sendable {
  public var feedback: FeedbackData

  public init(feedback: FeedbackData) {
    self.feedback = feedback
  }
}
