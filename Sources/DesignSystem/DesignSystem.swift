//
//  IOSDesignSystem.swift
//  IOSDesignSystem
//
//  Created by Muhammad Qadri on 29.03.25.
//

import Foundation

/// `DesignSystem` serves as a centralized namespace for organizing foundational styles
/// and UI components within the design system. It follows a structured approach to
/// keep global variables and elements well-organized and accessible via dot notation.
///
/// Usage Example:
/// ```swift
/// let primaryColor = DesignSystem.Styles.Colors.primary
/// let customButton = DesignSystem.Components.CustomButton()
/// ```
public struct DesignSystem {
  
  /// `Styles` encapsulates fundamental design elements like colors, typography, spacing, etc.
  /// These foundational elements are used throughout the design system to maintain consistency.
  public struct Styles {
    
    /// `Colors` defines the standard color palette for the design system.
    /// Example usage:
    /// ```swift
    /// let primaryColor = DesignSystem.Styles.Colors.primary
    /// ```
    public struct Colors {}
    
    /// `Typography` defines the standard fonts palette for the design system.
    /// Example usage:
    /// ```swift
    /// let body = DesignSystem.Styles.Typography.body
    /// ```
    public struct Typography {}
    public struct Spacers{}
    public struct FontWeight{}
    
  }
  
  /// `Components` contains reusable UI elements that are built using
  /// foundational styles. These components ensure consistency across the app.
  /// Example usage:
  /// ```swift
  /// let customButton = DesignSystem.Components.CustomButton()
  /// ```
  public struct Components {
    public struct Buttons {}
  }
}
