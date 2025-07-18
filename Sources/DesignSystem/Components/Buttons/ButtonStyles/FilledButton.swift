//
//  FilledButton.swift
//  DesignSystem
//
//  Created by Muhammad Qadri on 01.04.25.
//

import SwiftUI

public extension DesignSystem.Components.Buttons {
  struct FilledPressedButtonStyle: ButtonStyle {
    let outlineColor: Color
    let pressedBackgroundColor: Color
    let defaultBackgroundColor: Color
    let height: CGFloat
    
    public init(
      outlineColor: Color = DesignSystem.Styles.Colors.lightOutline,
      pressedBackgroundColor: Color = Color.clear,
      defaultBackgroundColor: Color = DesignSystem.Styles.Colors.primary40,
      height: CGFloat = 50
    ) {
      self.height = height
      self.outlineColor = outlineColor
      self.pressedBackgroundColor = pressedBackgroundColor
      self.defaultBackgroundColor = defaultBackgroundColor
    }
    
    public func makeBody(configuration: Configuration) -> some View {
      let isPressed = configuration.isPressed
      
      return configuration.label
        .padding()
        .contentShape(Rectangle())
        .frame(maxWidth: .infinity)
        .overlay(
          RoundedRectangle(cornerRadius: 100)
            .stroke(outlineColor, lineWidth: 2.0)
        )
        .foregroundColor(outlineColor)
        .background(
          RoundedRectangle(cornerRadius: 100)
            .fill(isPressed ? pressedBackgroundColor : defaultBackgroundColor)
        )
        .animation(.easeInOut, value: 0.33)
    }
  }
  
  struct DisabledButtonStyle: ButtonStyle {
    let outlineColor: Color
    let backgroundColor: Color
    let height: CGFloat
    
    public init(
      outlineColor: Color = DesignSystem.Styles.Colors.disabledBackgroundColor,
      backgroundColor: Color = DesignSystem.Styles.Colors.disabledBackgroundColor,
      height: CGFloat = 50
    ) {
      self.height = height
      self.outlineColor = outlineColor
      self.backgroundColor = backgroundColor
    }
    
    public func makeBody(configuration: Configuration) -> some View {
      return configuration.label
        .padding()
        .contentShape(Rectangle())
        .frame(maxWidth: .infinity, minHeight: height, maxHeight: height)
        .overlay(
          RoundedRectangle(cornerRadius: 100)
            .stroke(outlineColor, lineWidth: 2.0)
        )
        .foregroundColor(outlineColor)
        .background(
          RoundedRectangle(cornerRadius: 100)
            .fill(backgroundColor)
        )
        .disabled(true)
        .animation(.easeInOut, value: 0.33)
    }
  }
}
