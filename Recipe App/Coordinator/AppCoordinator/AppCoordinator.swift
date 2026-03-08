import SwiftUI
import Combine

enum AppRoute {
    case onBoarding
    case main
}

class AppCoordinator: ObservableObject {
    @Published var currentRoute: AppRoute
    
    init() {
        let hasSeenOnboarding = UserDefaults.standard.bool(forKey: AppConstans.hasSeenOnboardingKey.rawValue)
        self.currentRoute = hasSeenOnboarding ? .main : .onBoarding
    }
    
    func finishOnboarding() {
        UserDefaults.standard.set(true, forKey: AppConstans.hasSeenOnboardingKey.rawValue)
        
        
        withAnimation(.easeInOut) {
            self.currentRoute = .main
        }
    }
}
