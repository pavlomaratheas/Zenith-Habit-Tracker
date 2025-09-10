import Foundation

struct HabitCompletion: Identifiable, Hashable {
    let id: UUID = UUID()
    var habitId: UUID
    var date: Date
    var ticks: Int
}
