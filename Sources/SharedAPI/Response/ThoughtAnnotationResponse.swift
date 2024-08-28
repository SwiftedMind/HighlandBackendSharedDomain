import Foundation
import SharedModels

public struct ThoughtAnnotationResponse: Codable, Sendable {
  public var annotation: ThoughtAnnotation

  public init(annotation: ThoughtAnnotation) {
    self.annotation = annotation
  }
}
