import UIKit
enum Haptics {
    static func success() { UINotificationFeedbackGenerator().notificationOccurred(.success) }
    static func soft() { UIImpactFeedbackGenerator(style: .soft).impactOccurred() }
    static func light() { UIImpactFeedbackGenerator(style: .light).impactOccurred() }
}
