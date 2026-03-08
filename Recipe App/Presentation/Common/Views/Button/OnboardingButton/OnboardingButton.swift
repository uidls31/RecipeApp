
import SwiftUI

struct OnboardingButton: View {
    var isSelected: Bool
    var text: String
    var action: () -> Void
    var body: some View {
        VStack {
            Button {
                action()
            } label: {
                Text(text)
                    .padding(.vertical, 15)
                    .frame(maxWidth: 250)
                    .background(.lightGrayApp)
                    .overlay(content: {
                        Capsule()
                            .stroke(isSelected ? .primaryApp : .clear,lineWidth: 2)
                    })
                    .foregroundStyle(.black)
                    .cornerRadius(32)
                    
            }
        }
    }
}
