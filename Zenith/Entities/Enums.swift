import Foundation

enum Category: String, CaseIterable, Identifiable {
    case personal = "Personal"
    case work = "Work"
    var id: String { rawValue }
}
