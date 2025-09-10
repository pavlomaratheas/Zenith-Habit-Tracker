import Foundation

struct HabitAlarm: Identifiable, Hashable {
    let id = UUID()
    var time: Date
}
