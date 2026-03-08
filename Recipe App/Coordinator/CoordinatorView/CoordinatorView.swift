import SwiftUI

struct CoordinatorView: View {
    @StateObject private var coordinator = AppCoordinator()
    
    var body: some View {
        Group {
            switch coordinator.currentRoute {
            case .onBoarding:
                Assembly.createOnboardingView {
                    coordinator.finishOnboarding()
                }
            case .main:
                MainView()
            }
        }
    }
}
