//
//  SecondaryButton.swift
//  DesignSystem
//
//  Created by Muhammad Qadri on 16.07.25.
//


import SwiftUI

public extension DesignSystem.Components.Buttons {
  
  /// A reusable secondary button styled according to the design system.
  ///
  /// `SecondaryButton` provides a full-width, accessibility-friendly button
  /// that supports multi-line text and dynamic font scaling.
  /// It uses `DSButton.FilledPressedButtonStyle` for consistent styling.
  struct SecondaryButton: View {
    
    private let title: LocalizedStringKey
    private let action: () -> Void
    private let icon: Image?

    /// Creates a new `SecondaryButton` with a localizable string key.
    ///
    /// - Parameters:
    ///   - title: The `LocalizedStringKey` to display as the button label.
    ///   - icon: Takes an icon to show on left side of the tittle.
    ///   - action: A closure to execute when the button is tapped.
    public init(
      title: LocalizedStringKey,
      icon: Image? = nil,
      action: @escaping () -> Void
    ) {
      self.title = title
      self.action = action
      self.icon = icon
    }

    /// Creates a new `PrimaryButton` with a raw string (non-localized).
    ///
    /// - Parameters:
    ///   - title: The raw string to display on the button.
    ///   - icon: Takes an icon to show on left side of the tittle.
    ///   - action: A closure to execute when the button is tapped.
    public init(
      title: String,
      icon: Image? = nil,
      action: @escaping () -> Void
    ) {
      self.title = LocalizedStringKey(title)
      self.action = action
      self.icon = icon
    }

    public var body: some View {
      Button(action: action) {
        HStack(spacing: 8) {
          Spacer()
          if let icon {
            icon
              .resizable()
              .frame(width: 16, height: 16)
              .foregroundColor(DSColor.primary)
          }
          Text(title)
            .font(DSTypography.Label.large)
            .fontWeight(DSStyle.FontWeight.medium_500)
            .foregroundColor(DSColor.primary)
            .multilineTextAlignment(.center)
            .lineLimit(2)
            .minimumScaleFactor(0.8)
            .fixedSize(horizontal: false, vertical: true)
            .frame(maxWidth: .infinity)
          Spacer()
        }
      }
      .buttonStyle(DSButton.OutlinePressedButtonStyle())
    }
  }
}
