import Foundation

public struct ThoughtAnnotationResponse: Codable, Sendable {
  public var annotatedThought: AnnotatedThoughtSchema
  public var previousThoughtIds: [Int]
  
  public init(
    annotatedThought: AnnotatedThoughtSchema,
    previousThoughtIds: [Int]
  ) {
    self.annotatedThought = annotatedThought
    self.previousThoughtIds = previousThoughtIds
  }
}
