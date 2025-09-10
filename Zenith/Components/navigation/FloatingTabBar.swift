import SwiftUI

struct FloatingTabBar: View {
    @Binding var selection: Tab
    @Namespace private var anim

    var body: some View {
        HStack(spacing: 10) {
            ForEach(Tab.allCases) { tab in
                Button {
                    withAnimation(.spring(response: 0.3, dampingFraction: 0.8)) {
                        selection = tab
                    }
                    Haptics.light()
                } label: {
                    HStack(spacing: 6) {
                        Image(systemName: tab.systemImage)
                            .font(.system(size: 16, weight: .semibold))
                            .symbolVariant(selection == tab ? .fill : .none)

                        Text(tab.title)
                            .font(.footnote.weight(.semibold))
                            .opacity(selection == tab ? 1 : 0.9)
                    }
                    .foregroundStyle(selection == tab ? Color.accentColor : .primary.opacity(0.55))
                    .padding(.horizontal, 12)
                    .padding(.vertical, 10)
                    .background(
                        Group {
                            if selection == tab {
                                Capsule()
                                    .fill(Color.accentColor.opacity(0.12))
                                    .matchedGeometryEffect(id: "pill", in: anim)
                            }
                        }
                    )
                }
                .accessibilityLabel(tab.title)
                .buttonStyle(.plain)
            }
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 8)
        .background(
            Capsule(style: .continuous)
                .fill(.ultraThinMaterial)
                .shadow(color: .black.opacity(0.08), radius: 10, x: 0, y: 4)
        )
        .compositingGroup()
    }
}
