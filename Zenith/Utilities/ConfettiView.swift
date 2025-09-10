import SwiftUI
struct ConfettiView: View {
    let colors: [Color] = [.pink, .blue, .green, .orange, .purple]
    var body: some View {
        TimelineView(.animation) { timeline in
            Canvas { ctx, size in
                let t = timeline.date.timeIntervalSinceReferenceDate.truncatingRemainder(dividingBy: 2.0)
                let count = 40
                for i in 0..<count {
                    var x = Double(i) / Double(count) * size.width
                    x += sin(t * Double(i)) * 8
                    let y = t * size.height + Double(i) * 2
                    let rect = CGRect(x: x, y: y.truncatingRemainder(dividingBy: size.height), width: 6, height: 10)
                    let path = Path(roundedRect: rect, cornerRadius: 2)
                    ctx.fill(path, with: .color(colors[i % colors.count].opacity(0.9)))
                }
            }
        }
        .allowsHitTesting(false)
        .transition(.opacity)
    }
}
