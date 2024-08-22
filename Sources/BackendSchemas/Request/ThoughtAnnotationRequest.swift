import Foundation

public struct ThoughtAnnotationRequest: Codable, Sendable {
  public var userInput: String
  public var previousThoughts: [PreviousThoughtSchema]
  public var timeZone: String
  public var memoryItems: [String]

  public init(
    userInput: String,
    previousThoughts: [PreviousThoughtSchema],
    timeZone: String,
    memoryItems: [String]
  ) {
    self.userInput = userInput
    self.previousThoughts = previousThoughts
    self.timeZone = timeZone
    self.memoryItems = memoryItems
  }

  public var validatableString: String {
    """
    # User Input
    \(userInput)

    # User Topics: 
    \(previousThoughts.map(\.summary).joined(separator: "\n"))

    # Memory:
    \(memoryItems.joined(separator: "\n"))
    """
  }
}
