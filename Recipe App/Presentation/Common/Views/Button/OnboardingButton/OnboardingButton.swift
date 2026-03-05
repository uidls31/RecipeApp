
import SwiftUI

struct OnboardingButton: View {
    @Binding var isSelected: Bool
    var body: some View {
        VStack {
            Button {
                isSelected.toggle()
            } label: {
                Text("Italian")
                    .padding(.vertical, 10)
                    .frame(maxWidth: 200)
                    .background(.lightGrayApp)
                    .overlay(content: {
                        Capsule()
                            .stroke(isSelected ? .primaryApp : .clear,lineWidth: 2)
                    })
                    .cornerRadius(32)
            }
        }
    }
}
