import Foundation

class Assembly {
    static let shared = Assembly()
    
    private init() {}
    
    static func createOnboardingViewModel() -> OnboardingViewModel {
        OnboardingViewModel()
    }
    
    static func createOnboardingView(onFinish: @escaping () -> Void) -> OnboardingView {
        let viewModel = createOnboardingViewModel()
        
        return OnboardingView(viewModel: viewModel, onFinish: onFinish)
    }
}
