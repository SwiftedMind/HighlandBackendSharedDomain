import Foundation
import SharedModels

public struct AuthenticationRequest: Codable, Sendable {
  public var userId: String

  public init(userId: String) {
    self.userId = userId
  }
}
