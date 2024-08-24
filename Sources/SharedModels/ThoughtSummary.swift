// By Dennis Müller

import Foundation

public struct ThoughtSummary: Codable, Sendable {
  public var simpleId: Int
  public var summary: String

  public init(simpleId: Int, summary: String) {
    self.simpleId = simpleId
    self.summary = summary
  }
}
