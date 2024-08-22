import Foundation

public struct StatusResponse: Codable, Sendable {
    public var status: StatusSchema

    public init(status: StatusSchema) {
      self.status = status
    }
  }
