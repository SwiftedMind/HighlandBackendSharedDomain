import Foundation

public struct ThoughtAnnotationResponse: Codable, Sendable {
  public var annotatedThought: AnnotatedThoughtSchema
  public var associatedThoughtIds: [String]
  
  public init(
    annotatedThought: AnnotatedThoughtSchema,
    associatedThoughtIds: [String]
  ) {
    self.annotatedThought = annotatedThought
    self.associatedThoughtIds = associatedThoughtIds
  }
}
