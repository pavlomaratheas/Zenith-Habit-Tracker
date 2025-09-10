import SwiftUI

struct PillBar: View {
    let options: [String]
    @Binding var selection: String
    
    var body: some View {
        HStack(spacing: 8) {
            ForEach(options, id: \.self) { option in
                Button(action: {
                    selection = option
                }) {
                    Text(option)
                        .font(.subheadline.bold())
                        .foregroundColor(selection == option ? .white : .primary)
                        .padding(.vertical, 8)
                        .frame(maxWidth: .infinity)
                        .background(
                            Capsule()
                                .fill(selection == option ? Color.accentColor : Color.clear)
                        )
                }
                .buttonStyle(.plain)
            }
        }
        .padding(6)
        .background(
            Capsule()
                .fill(Color.gray.opacity(0.15))
        )
        .animation(.easeInOut, value: selection)
    }
}
