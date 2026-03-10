import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            VStack(spacing: 18) {
                HeaderOnboardingView(textPage: "Good morning!", headerType: .main, currentPage: .constant(0), imageButton: .notificationApp) {
                    
                }
                .padding(.top, 35)
                
                TodaysPick()
            }
            
        }
        .padding(.horizontal, 16)
        Spacer()
    }
}

#Preview {
    MainView()
}
