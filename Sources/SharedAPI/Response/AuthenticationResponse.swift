import Foundation
import SharedModels

public struct AuthenticationResponse: Codable, Sendable {
  public var authentication: Authentication

  public init(authentication: Authentication) {
    self.authentication = authentication
  }
}
