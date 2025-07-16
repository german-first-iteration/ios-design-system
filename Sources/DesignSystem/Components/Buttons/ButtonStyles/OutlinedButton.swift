//
//  Buttons.swift
//  DesignSystem
//
//  Created by Muhammad Qadri on 01.04.25.
//

import SwiftUI

public extension DesignSystem.Components.Buttons {
  struct OutlinePressedButtonStyle: ButtonStyle {
    
    let outlineColor: Color
    let pressedBackgroundColor: Color
    let defaultBackgroundColor: Color
    let height: CGFloat
    
    public init(
      outlineColor: Color = DesignSystem.Styles.Colors.lightOutline,
      pressedBackgroundColor: Color = DesignSystem.Styles.Colors.lightPrimary.opacity(0.8),
      defaultBackgroundColor: Color = Color.clear,
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
        .frame(maxWidth: .infinity)
        .contentShape(Rectangle())
        .overlay(
          RoundedRectangle(cornerRadius: 100)
            .stroke(outlineColor, lineWidth: 1.0)
        )
        .foregroundColor(outlineColor)
        .background(
          RoundedRectangle(cornerRadius: 100)
            .fill(isPressed ? pressedBackgroundColor : defaultBackgroundColor)
        )
        .animation(.easeInOut(duration: 0.2), value: isPressed)
    }
  }
}
