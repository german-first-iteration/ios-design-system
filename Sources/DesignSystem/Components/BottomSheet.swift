//
//  PasswordDetailBottomSheetView.swift
//  DesignSystem
//
//  Created by Muhammad Qadri on 28.05.25.
//


private struct PasswordDetailBottomSheetView: View {
    var title: String
    var message: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
          
          HStack(alignment: .center, spacing: 8) {
            Image(systemName: "info.circle")
            .foregroundColor(DSStyle.Colors.lightPrimary)
            .frame(width: 32, height: 32)

              Text(title)
              .font(DSStyle.Typography.Headline.small)
              .foregroundStyle(DSStyle.Colors.lightPrimary)
          }
          .padding(.top, 32)
            Text(message)
                .font(.body)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .frame(height: UIScreen.main.bounds.height * 0.5)
        .background(DSStyle.Colors.lightBackground)
        .clipShape(RoundedCorner(radius: 20, corners: [.topLeft, .topRight]))
    }
}