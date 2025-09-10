import Foundation

enum PrimaryGoal: String, CaseIterable, Identifiable {
    case productivity = "Productivity"
    case wellbeing = "Wellbeing"
    case personalGrowth = "Personal Growth"

    var id: String { rawValue }
}
