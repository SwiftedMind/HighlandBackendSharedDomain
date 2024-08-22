import Foundation

public struct ThoughtAnnotationResponse: Codable, Sendable {
  public var annotatedThought: AnnotatedThoughtSchema

  public init(annotatedThought: AnnotatedThoughtSchema) {
    self.annotatedThought = annotatedThought
  }
}
