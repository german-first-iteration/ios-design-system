//
//  BottomSheetView.swift
//  DesignSystem
//
//  Created by Muhammad Qadri on 28.05.25.
//
import SwiftUI

@available(iOS 16.0, *)
public struct BottomSheetView: View {
  var title: String
  var message: String
  
  public init(title: String, message: String) {
    self.title = title
    self.message = message
  }
  
  public var body: some View {
    VStack(alignment: .leading, spacing: 16) {
      
      HStack(spacing: 16) {
        Image(systemName: "info.circle")
          .resizable()
          .foregroundColor(DesignSystem.Styles.Colors.lightPrimary)
          .frame(width: 42, height: 42)
        
        Text(title)
          .font(DesignSystem.Styles.Typography.Title.large)
          .foregroundStyle(DesignSystem.Styles.Colors.lightPrimary)
          .fontWeight(DesignSystem.Styles.FontWeight.medium_500)
      }
      .padding(.top, 32)
      Text(message)
        .font(DesignSystem.Styles.Typography.Body.large)
        .foregroundStyle(DesignSystem.Styles.Colors.lightPrimary)
        .fontWeight(DesignSystem.Styles.FontWeight.regular_400)
      
      Spacer()
    }
    .padding()
    .frame(height: UIScreen.main.bounds.height * 0.5)
    .background(DesignSystem.Styles.Colors.lightBackground)
    .clipShape(RoundedCorner(radius: 20, corners: [.topLeft, .topRight]))
    .presentationDetents([.medium])
  }
}
