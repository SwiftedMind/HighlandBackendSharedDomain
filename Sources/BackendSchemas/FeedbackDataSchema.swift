// By Dennis Müller

import Foundation

public struct FeedbackDataSchema: Codable, Sendable {
  public var message: String
  public var senderEmail: String?
  public var senderUserId: String?
  public var appVersion: String
  public var device: String
  public var iosVersion: String

  public init(
    message: String,
    senderEmail: String? = nil,
    senderUserId: String? = nil,
    appVersion: String,
    device: String,
    iosVersion: String
  ) {
    self.message = message
    self.senderEmail = senderEmail
    self.senderUserId = senderUserId
    self.appVersion = appVersion
    self.device = device
    self.iosVersion = iosVersion
  }
}
