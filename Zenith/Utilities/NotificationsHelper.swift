import UserNotifications

enum NotificationsHelper {
    static func scheduleNotification(title: String, body: String, date: Date) {
        let content = UNMutableNotificationContent()
        content.title = title
        content.body = body
        let comps = Calendar.current.dateComponents([.hour, .minute], from: date)
        let trigger = UNCalendarNotificationTrigger(dateMatching: comps, repeats: false)
        let req = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(req)
    }
}
enum Motivations {
    static let phrases = [
        "Small steps, big wins.",
        "You’re closer than you think!",
        "Momentum is your superpower.",
        "Show up. Tiny wins compound.",
        "Future you says: thanks!"
    ]
    static func randomBody(for habit: String) -> String {
        return "\(habit): \(phrases.randomElement() ?? "Keep going!")"
    }
}
