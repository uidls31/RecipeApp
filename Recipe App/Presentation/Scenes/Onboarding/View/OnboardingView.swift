import SwiftUI

struct OnboardingView: View {
    @State private var isSelected: Bool = false
    var body: some View {
        VStack(alignment: .center, spacing: 33) {
            HeaderOnboardingView()
                .padding(.horizontal, 32)
                .padding(.top, 34)
            
            VStack(alignment: .center, spacing: 18) {
                Text("What cuisines do you love most?")
                    .font(.system(size: 24))
                    .multilineTextAlignment(.center)
                    .bold()
                Text("Your go-to flavors and favorite dishes.")
                    .font(.system(size: 15))
                    .foregroundColor(.darkBrownApp)
            }
            .padding(.horizontal, 42)
            
            VStack(spacing: 16) {
                OnboardingButton(isSelected: $isSelected)
                
            }
            .padding(.top, 5)
            
            Spacer()
            
            Button {
                //
            } label: {
                Text("Next")
                    .font(.system(size: 15))
                    .bold()
                    .foregroundColor(.white)
                    .frame(maxWidth: 200)
                    .padding(.vertical, 16)
                    .background(.primaryApp)
                    .cornerRadius(32)
                
            }
            .padding(.bottom, 120)

        }
    }
}

#Preview {
    OnboardingView()
}
