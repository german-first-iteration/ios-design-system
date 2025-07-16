//
//  DSPrimaryButton.swift
//  DesignSystem
//
//  Created by Muhammad Qadri on 16.07.25.
//

import SwiftUI

public extension DesignSystem.Components.Buttons {
  
  /// A reusable primary button styled according to the design system.
  ///
  /// `DSPrimaryButton` provides a full-width, accessibility-friendly button
  /// that supports multi-line text and dynamic font scaling up to 200%.
  /// It uses `DSButton.FilledPressedButtonStyle` for consistent visual appearance.
  struct DSPrimaryButton: View {
    
    /// The text displayed inside the button.
    public let title: String
    
    /// The action triggered when the button is tapped.
    public let action: () -> Void
    
    /// Creates a new `DSPrimaryButton` with the provided title and tap action.
    ///
    /// - Parameters:
    ///   - title: The label shown on the button. Supports multiline and font scaling.
    ///   - action: A closure executed when the button is tapped.
    public init(title: String, action: @escaping () -> Void) {
      self.title = title
      self.action = action
    }
    
    public var body: some View {
      Button(action: action) {
        Text(title)
          .font(DSTypography.Label.large)
          .fontWeight(DSStyle.FontWeight.medium_500)
          .foregroundColor(DSColor.onPrimaryPID)
          .multilineTextAlignment(.center)
          .lineLimit(2)
          .minimumScaleFactor(0.8)
          .fixedSize(horizontal: false, vertical: true)
          .frame(maxWidth: .infinity)
          .padding(.vertical, 12)
      }
      .buttonStyle(
        DSButton.FilledPressedButtonStyle(defaultBackgroundColor: DSColor.primary)
      )
    }
  }
}
