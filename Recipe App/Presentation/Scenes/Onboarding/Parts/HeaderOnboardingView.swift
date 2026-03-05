import SwiftUI

struct HeaderOnboardingView: View {
    var body: some View {
        ZStack {
            HStack {
                Button {
                    //
                } label: {
                    Image(.backVectorApp)
                }
                Spacer()
            }
            Text("1 / 3")
                .font(.system(size: 14))
                .foregroundColor(.darkBrownApp)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    HeaderOnboardingView()
}
