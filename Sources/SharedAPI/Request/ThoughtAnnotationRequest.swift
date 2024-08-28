import Foundation
import SharedModels

public struct ThoughtAnnotationRequest: Codable, Sendable {
  public var userInput: String
  public var timeZone: String
  public var memoryItems: [String]

  public init(
    userInput: String,
    timeZone: String,
    memoryItems: [String]
  ) {
    self.userInput = userInput
    self.timeZone = timeZone
    self.memoryItems = memoryItems
  }

  public var validatableString: String {
    """
    # User Input
    \(userInput)

    # Memory:
    \(memoryItems.joined(separator: "\n"))
    """
  }
}
