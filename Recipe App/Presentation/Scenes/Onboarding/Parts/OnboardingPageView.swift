import SwiftUI

struct OnboardingPageView: View {
    @Binding var options: [OnboardingOption]
    var mainText: String
    var subText: String
    @Binding var currentPage: Int
    var body: some View {
        VStack(alignment: .center) {
            
            VStack(spacing: 37) {
                VStack(alignment: .center, spacing: 18) {
                    Text(mainText)
                        .font(.system(size: 24))
                        .multilineTextAlignment(.center)
                        .bold()
                    Text(subText)
                        .font(.system(size: 15))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.darkBrownApp)
                }
                .padding(.horizontal, 42)
                
                VStack(spacing: 16) {
                    if currentPage == 3 {
                        Image(.womanImageApp)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 300)
                    } else {
                        ForEach($options) { $option in
                            OnboardingButton(isSelected: option.isSelected, text: option.title ?? "") {
                                option.isSelected.toggle()
                            }
                        }
                    }
                    
                    
                }
                Spacer()
            }
        }
    }
}

