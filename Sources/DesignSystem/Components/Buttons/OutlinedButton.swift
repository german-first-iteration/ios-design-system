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
    let width: CGFloat
    let height: CGFloat
    
    public init(
      outlineColor: Color = DesignSystem.Styles.Colors.lightOutline,
      pressedBackgroundColor: Color = DesignSystem.Styles.Colors.lightPrimary.opacity(0.8),
      defaultBackgroundColor: Color = Color.clear,
      width: CGFloat = 156,
      height: CGFloat = 40
    ) {
      self.width = width
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
        .frame(width: width, height: height, alignment: .center)
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
