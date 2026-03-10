import SwiftUI

struct OnboardingView: View {
    @State private var isSelected: Bool = false
    @State private var currentPage: Int = 0
    @StateObject var viewModel: OnboardingViewModel
    var onFinish: () -> Void
    var body: some View {
        VStack(alignment: .center, spacing: 37) {
            HeaderOnboardingView(textPage: "\(currentPage + 1) / 4", headerType: .onboarding, currentPage: $currentPage, imageButton: .backVectorApp, action: {
                withAnimation(.easeInOut) {
                    currentPage -= 1
                }
            })
                .padding(.horizontal, 32)
                .padding(.top, 34)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    OnboardingPageView(options: $viewModel.cuisines, mainText: "What cuisines do you love most?", subText: "Your go-to flavors and favorite dishes.", currentPage: $currentPage)
                        .containerRelativeFrame(.horizontal)
                        .id(0)
                    OnboardingPageView(options: $viewModel.times, mainText: "How much time do you usually have to cook?", subText: "Match recipes with your daily schedule.", currentPage: $currentPage)
                        .containerRelativeFrame(.horizontal)
                        .id(1)
                    OnboardingPageView(options: $viewModel.diets, mainText: "Do you have any dietary preferences or restrictions?", subText: "You can change them anytime.", currentPage: $currentPage)
                        .containerRelativeFrame(.horizontal)
                        .id(2)
                    OnboardingPageView(options: $viewModel.voidArray, mainText: "Greate taste,\nGreat choice!", subText: "Your recipe journey starts here with simple, fresh and delicious meals.", currentPage: $currentPage)
                        .containerRelativeFrame(.horizontal)
                        .id(3)
                }
                .scrollTargetLayout()
            }
            .scrollTargetBehavior(.paging)
            .scrollPosition(id: Binding(get: { currentPage }, set: { if let newValue = $0 { currentPage = newValue } }))
            .animation(.easeOut, value: currentPage)
            .scrollDisabled(true)
            
            
            
            Button {
                withAnimation(.easeInOut) {
                    if currentPage < 3 {
                        currentPage += 1
                    } else {
                        onFinish()
                    }
                }
            } label: {
                Text(currentPage == 3 ? "Start Cooking" : "Next")
                    .font(.system(size: 16))
                    .padding(.vertical, 20)
                    .bold()
                    .foregroundColor(.white)
                    .frame(maxWidth: 250)
                    .background(.primaryApp)
                    .cornerRadius(32)
                
            }
            .padding(.bottom, 30)

        }
    }
}

#Preview {
    OnboardingView(viewModel: OnboardingViewModel()) {
        //
    }
}
