//
//  Colors.swift
//  IOSDesignSystem
//
//  Created by Muhammad Qadri on 31.03.25.
//

import SwiftUI

/// Extension to define color styles within the DesignSystem.
/// These colors follow a structured naming convention and can be used throughout the app for consistency.
public extension DesignSystem.Styles.Colors {
  
  /// The primary brand color used for main actions and highlights.
  static let primary = Color(red: 0.2, green: 0.6, blue: 0.86)
  
  /// The secondary brand color used for secondary actions and accents.
  static let secondary = Color(red: 0.9, green: 0.4, blue: 0.4)
  
  /// The background color used for general UI backgrounds.
  static let background = Color(red: 0.95, green: 0.95, blue: 0.95)
  
  /// Easy access to all colors
  static let allColors: [(name: String, color: Color)] = [
    ("Primary", primary),
    ("Secondary", secondary),
    ("Background", background)
  ]
}
