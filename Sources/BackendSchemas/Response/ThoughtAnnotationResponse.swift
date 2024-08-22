import Foundation

public struct ThoughtAnnotationResponse: Codable, Sendable {
  public var annotatedThought: AnnotatedThoughtSchema
  public var associatedThoughtIds: [Int]
  
  public init(
    annotatedThought: AnnotatedThoughtSchema,
    associatedThoughtIds: [Int]
  ) {
    self.annotatedThought = annotatedThought
    self.associatedThoughtIds = associatedThoughtIds
  }
}
