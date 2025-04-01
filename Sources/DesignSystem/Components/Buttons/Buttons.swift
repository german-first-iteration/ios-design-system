//
//  Buttons.swift
//  DesignSystem
//
//  Created by Muhammad Qadri on 01.04.25.
//

import SwiftUI

public enum DesignSystemButtonStyle {
    case filled, outlined, text, elevated, tonal
}

public struct Buttons: View {
  
      let title: String
      let icon: String?
      let style: DesignSystemButtonStyle
      let isDisabled: Bool
      let action: () -> Void
      
      public init(
          title: String,
          icon: String? = nil,
          style: DesignSystemButtonStyle,
          isDisabled: Bool = false,
          action: @escaping () -> Void
      ) {
          self.title = title
          self.icon = icon
          self.style = style
          self.isDisabled = isDisabled
          self.action = action
      }
      
      public var body: some View {
          Button(action: action) {
              HStack {
                  if let icon = icon {
                      Image(systemName: icon)
                  }
                  Text(title)
              }
              .padding()
              .frame(height: 40)
              .background(backgroundColor)
              .foregroundColor(foregroundColor)
              .overlay(border)
              .clipShape(Capsule())
              .opacity(isDisabled ? 0.5 : 1.0)
          }
          .disabled(isDisabled)
      }
      
      private var backgroundColor: Color {
          switch style {
          case .filled: return Color.purple
          case .tonal: return Color.purple.opacity(0.2)
         // case .elevated: return Color.white.shadow(radius: 2)
          default: return Color.clear
          }
      }
      
      private var foregroundColor: Color {
          switch style {
          case .filled, .tonal, .elevated: return Color.white
          case .outlined, .text: return Color.purple
          }
      }
      
      private var border: some View {
          switch style {
          case .outlined: return AnyView(RoundedRectangle(cornerRadius: 20).stroke(Color.purple, lineWidth: 1))
          default: return AnyView(EmptyView())
          }
      }

}

