//
//  FilledButton.swift
//  DesignSystem
//
//  Created by Muhammad Qadri on 01.04.25.
//

import SwiftUI

public extension DesignSystem.Components.Buttons {
  struct FilledPressedButtonStyle: ButtonStyle {
    
    public let outlineColor: Color
    public let pressedBackgroundColor: Color
    public let defaultBackgroundColor: Color
    
    public init(
      outlineColor: Color = DesignSystem.Styles.Colors.lightOutline,
      pressedBackgroundColor: Color = Color.clear,
      defaultBackgroundColor: Color = DesignSystem.Styles.Colors.primary40
    ) {
      self.outlineColor = outlineColor
      self.pressedBackgroundColor = pressedBackgroundColor
      self.defaultBackgroundColor = defaultBackgroundColor
    }
    
    public func makeBody(configuration: Configuration) -> some View {
      let isPressed = configuration.isPressed
      
      return configuration.label
        .padding()
        .contentShape(Rectangle())
        .frame(maxWidth: .infinity, alignment: .center)
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
}
