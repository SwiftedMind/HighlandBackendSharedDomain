import Foundation

public struct ThoughtAnnotationResponse: Codable, Sendable {
  public var annotatedThought: ThoughtAnnotation
  public var previousThoughtIds: [Int]
  
  public init(
    annotatedThought: ThoughtAnnotation,
    previousThoughtIds: [Int]
  ) {
    self.annotatedThought = annotatedThought
    self.previousThoughtIds = previousThoughtIds
  }
}
