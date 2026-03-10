import SwiftUI

enum HeaderType {
    case onboarding
    case main
}

struct HeaderOnboardingView: View {
    var textPage: String
    var headerType: HeaderType
    @Binding var currentPage: Int
    var imageButton: ImageResource
    var action: () -> Void
    var body: some View {
        switch headerType {
        case .onboarding:
            ZStack {
                HStack {
                    if currentPage == 0 {
                        
                    } else {
                        Button {
                            action()
                        } label: {
                            Image(imageButton)
                        }
                    }
                    Spacer()
                }
                Text(textPage)
                    .font(.system(size: 14))
                    .foregroundColor(.darkBrownApp)
            }
            .frame(maxWidth: .infinity)
        case .main:
            ZStack {
                
                Text(textPage)
                    .font(.system(size: 18))
                    .foregroundColor(.primaryApp)
                
                
                HStack {
                    Spacer()
                    Button {
                        action()
                    } label: {
                        Image(imageButton)
                    }
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    HeaderOnboardingView(textPage: "sadsad", headerType: .main, currentPage: .constant(0), imageButton: .notificationApp) {
        //
    }
}
