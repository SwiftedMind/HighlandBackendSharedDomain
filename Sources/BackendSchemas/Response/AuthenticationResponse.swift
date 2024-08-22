import Foundation

public struct AuthenticationResponse: Codable, Sendable {
  public var authentication: AuthenticationSchema

  public init(authentication: AuthenticationSchema) {
    self.authentication = authentication
  }
}
