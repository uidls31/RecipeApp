import SwiftUI

struct TodaysPick: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            image
            VStack(alignment: .leading,spacing: 54) {
                Text("Today’s Pick")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundStyle(.white)
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading,spacing: 8) {
                        Text("Gyoza")
                            .foregroundStyle(.white)
                            .font(.system(size: 24, weight: .bold))
                        HStack(spacing: 12) {
                            HStack(spacing: 3) {
                                Image(systemName: "clock.fill")
                                    .foregroundStyle(.white)
                                Text("30m")
                                    .font(.system(size: 14, weight: .regular))
                                    .foregroundStyle(.white)
                            }
                            HStack(spacing: 3) {
                                Image(systemName: "flame.fill")
                                    .foregroundStyle(.white)
                                Text("730kcal")
                                    .font(.system(size: 14, weight: .regular))
                                    .foregroundStyle(.white)
                            }
                        }
                    }
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        HStack(spacing: 12) {
                            Text("Get Cooking")
                                .font(.system(size: 14, weight: .bold))
                            Image(.arrowRightApp)
                        }
                        .padding(.vertical, 16)
                        .frame(maxWidth: 135)
                        .background(.primaryApp)
                        .foregroundStyle(.white)
                        .cornerRadius(32)
                            
                    }
                    
                }
                .padding(.top, 16)
            }
            .padding(.top, 24)
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    TodaysPick()
}

extension TodaysPick {
    var image: some View {
        Image(.todaysPickApp)
            .resizable()
            .scaledToFill()
            .frame(maxWidth: .infinity, maxHeight: 200)
            .offset(x: 80)
            .clipped()
            .background(.black)
            .overlay {
                LinearGradient(
                    colors: [
                        .black.opacity(1.4),
                        .black.opacity(0.4),
                        .clear
                    ],
                    startPoint: .leading,
                    endPoint: .trailing
                )
                .cornerRadius(24)
            }
            .cornerRadius(24)
    }
}
