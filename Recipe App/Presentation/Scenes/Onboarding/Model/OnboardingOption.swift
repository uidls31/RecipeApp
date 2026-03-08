import Foundation

struct OnboardingOption: Identifiable {
    let id = UUID()
    let title: String?
    var isSelected: Bool = false
}
