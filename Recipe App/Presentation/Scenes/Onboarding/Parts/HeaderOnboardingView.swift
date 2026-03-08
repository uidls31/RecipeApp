import SwiftUI

struct HeaderOnboardingView: View {
    var textPage: String
    @Binding var currentPage: Int
    var action: () -> Void
    var body: some View {
        ZStack {
            HStack {
                if currentPage == 0 {
                    
                } else {
                    Button {
                        action()
                    } label: {
                        Image(.backVectorApp)
                    }
                }
                Spacer()
            }
            Text(textPage)
                .font(.system(size: 14))
                .foregroundColor(.darkBrownApp)
        }
        .frame(maxWidth: .infinity)
    }
}
