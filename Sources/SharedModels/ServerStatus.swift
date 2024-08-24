// By Dennis Müller

import Foundation

public struct ServerStatus: Codable, Sendable, Hashable {
  public var updatedAt: Date
  public var sageAvailable: Bool
  public var message: String?

  public init(updatedAt: Date, sageAvailable: Bool, message: String?) {
    self.updatedAt = updatedAt
    self.sageAvailable = sageAvailable
    self.message = message
  }
}
