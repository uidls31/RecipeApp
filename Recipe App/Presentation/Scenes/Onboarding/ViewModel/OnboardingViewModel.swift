import SwiftUI
import Combine

class OnboardingViewModel: ObservableObject {
    @Published var cuisines: [OnboardingOption] = [
        OnboardingOption(title: "Italian"),
        OnboardingOption(title: "Japanese"),
        OnboardingOption(title: "Indonesian"),
        OnboardingOption(title: "Chinese"),
        OnboardingOption(title: "Indian"),
        OnboardingOption(title: "American"),
    ]
    @Published var times: [OnboardingOption] = [
        OnboardingOption(title: "0-15 minutes"),
        OnboardingOption(title: "15-30 minutes"),
        OnboardingOption(title: "30-60 minutes"),
        OnboardingOption(title: "60-90 minutes"),
        OnboardingOption(title: "90-120 minutes"),
    ]
    
    @Published var diets: [OnboardingOption] = [
        OnboardingOption(title: "None"),
        OnboardingOption(title: "Vegetarian"),
        OnboardingOption(title: "Vegan"),
        OnboardingOption(title: "Gluten-Free")
    ]
    @Published var voidArray: [OnboardingOption] = []
}
