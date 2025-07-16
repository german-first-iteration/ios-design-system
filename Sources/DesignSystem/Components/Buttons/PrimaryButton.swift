//
//  PrimaryButton.swift
//  DesignSystem
//
//  Created by Muhammad Qadri on 16.07.25.
//

import SwiftUI

public extension DesignSystem.Components.Buttons {
  
  /// A reusable primary button styled according to the design system.
  ///
  /// `PrimaryButton` provides a full-width, accessibility-friendly button
  /// that supports multi-line text and dynamic font scaling.
  /// It uses `DSButton.FilledPressedButtonStyle` for consistent styling.
  struct PrimaryButton: View {
    
    private let title: LocalizedStringKey
    private let action: () -> Void

    /// Creates a new `PrimaryButton` with a localizable string key.
    ///
    /// - Parameters:
    ///   - title: The `LocalizedStringKey` to display as the button label.
    ///   - action: A closure to execute when the button is tapped.
    public init(title: LocalizedStringKey, action: @escaping () -> Void) {
      self.title = title
      self.action = action
    }

    /// Creates a new `PrimaryButton` with a raw string (non-localized).
    ///
    /// - Parameters:
    ///   - title: The raw string to display on the button.
    ///   - action: A closure to execute when the button is tapped.
    public init(title: String, action: @escaping () -> Void) {
      self.title = LocalizedStringKey(title)
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
      }
      .buttonStyle(DSButton.FilledPressedButtonStyle(defaultBackgroundColor: DSColor.primary))
    }
  }
}
