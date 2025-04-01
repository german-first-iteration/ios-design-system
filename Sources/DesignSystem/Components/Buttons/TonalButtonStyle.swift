//
//  TextButtonStyle.swift
//  DesignSystem
//
//  Created by Muhammad Qadri on 01.04.25.
//

import SwiftUI

public extension DesignSystem.Components.Buttons {
  struct TonalButtonStyle: ButtonStyle {
    
    public let outlineColor: Color
    public let pressedBackgroundColor: Color
    public let defaultBackgroundColor: Color
    
    public init(
      outlineColor: Color = Color.clear,
      pressedBackgroundColor: Color = DesignSystem.Styles.Colors.lightPrimary.opacity(0.12),
      defaultBackgroundColor: Color = DesignSystem.Styles.Colors.secondary90
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
