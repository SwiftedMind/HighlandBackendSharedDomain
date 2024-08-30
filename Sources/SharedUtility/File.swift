import Foundation

extension DateFormatter {
  static func day(timeZone: TimeZone) -> DateFormatter {
    let formatter = DateFormatter()
    
    formatter.timeZone = timeZone
    return formatter
  }
}
