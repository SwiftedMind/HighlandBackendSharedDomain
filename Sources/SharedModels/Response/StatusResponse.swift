import Foundation

public struct StatusResponse: Codable, Sendable {
    public var status: ServerStatus

    public init(status: ServerStatus) {
      self.status = status
    }
  }
