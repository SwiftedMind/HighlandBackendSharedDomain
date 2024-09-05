// By Dennis Müller

import Foundation

public struct Entitlement: Identifiable, Sendable, Hashable, Codable, CustomDebugStringConvertible {
  public enum Kind: String, Identifiable, Sendable, Hashable, Comparable, CaseIterable, Codable {
    case premium
    
    public var id: String { rawValue }
    
    private var order: Int {
      switch self {
      case .premium: 0
      }
    }
    
    public static func < (lhs: Kind, rhs: Kind) -> Bool {
      lhs.order < rhs.order
    }
  }
  
  public var id: Kind { kind }
  public var kind: Kind
  public var expiresDate: Date?
  
  public init(_ kind: Kind, expiresDate: Date? = nil) {
    self.kind = kind
    self.expiresDate = expiresDate
  }
  
  public var debugDescription: String {
    if let expiresDate {
      return "\(kind.rawValue.capitalized)(Expiry: \(expiresDate.formatted()))"
    }
    return "\(kind)"
  }
  
  public var isActive: Bool {
    if let expiresDate {
      return expiresDate >= Date()
    }
    
    return true
  }
}

public extension Sequence<Entitlement> {
  var premium: Entitlement? {
    first(where: { $0.kind == .premium })
  }
}
