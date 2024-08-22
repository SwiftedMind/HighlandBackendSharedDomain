// By Dennis Müller

import Foundation

public struct PreviousThoughtSchema: Codable, Sendable {
  public var id: Int
  public var summary: String

  public init(id: Int, summary: String) {
    self.id = id
    self.summary = summary
  }
}
