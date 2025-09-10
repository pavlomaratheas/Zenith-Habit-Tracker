import SwiftUI

struct Habit: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var category: Category
    var icon: String
    var targetTicks: Int
    var ticksDone: [Bool]
    var color: Color
    var alarms: [HabitAlarm] = []
    var showConfetti: Bool = false

    var isCompleted: Bool { ticksDone.allSatisfy { $0 } }
    var ratio: Double {
        guard targetTicks > 0 else { return 0 }
        let done = ticksDone.filter { $0 }.count
        return Double(done) / Double(targetTicks)
    }
    mutating func toggleTick(at index: Int) {
        guard ticksDone.indices.contains(index) else { return }
        ticksDone[index].toggle()
    }
}
