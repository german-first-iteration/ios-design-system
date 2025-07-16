//
//  Typealiases.swift
//  DesignSystem
//
//  Created by Muhammad Qadri on 28.05.25.
//

// MARK: STYLE TYPEALIASES

/// `DSStyle` is a shorthand alias for accessing styles within the Design System.
///
/// Example:
/// ```swift
/// DSStyle.Typography.Title.medium
/// ```
public typealias DSStyle = DesignSystem.Styles

/// `DSColor` is a shorthand alias for accessing standard color definitions from the Design System.
///
/// Example:
/// ```swift
/// DSColor.primary40
/// ```
public typealias DSColor = DesignSystem.Styles.Colors

/// `DSIconSizes` is a shorthand alias for accessing predefined icon sizes in the Design System.
///
/// Example:
/// ```swift
/// .frame(width: DSIconSizes.small, height: DSIconSizes.small)
/// ```
public typealias DSIconSize = DesignSystem.Styles.Sizes.Icons

/// `DSTypography` is a shorthand alias for accessing predefined Typography in the Design System.
///
/// Example:
/// ```swift
/// DSTypography.body
/// ```
public typealias DSTypography = DesignSystem.Styles.Typography

// MARK: COMPONENTS TYPEALIASES

/// `DSButton` is a shorthand alias for accessing predefined Buttons in the Design System.
///
/// Example:
/// ```swift
/// DSComponent.Buttons
/// ```
public typealias DSButton = DSComponent.Buttons

/// `DSPrimaryButton` is a shorthand alias for accessing predefined PrimaryButton in the Design System.
///
/// Example:
/// ```swift
///  DSPrimaryButton("title goes here"){
///       performAction()
///  }
/// ```
public typealias DSPrimaryButton = DesignSystem.Components.Buttons.PrimaryButton

/// `DSSecondaryButton` is a shorthand alias for accessing predefined SecondaryButton in the Design System.
///
/// Example:
/// ```swift
///  DSSecondaryButton("title goes here"){
///       performAction()
///  }
/// ```
public typealias DSSecondaryButton = DesignSystem.Components.Buttons.SecondaryButton


/// `DSComponent` is a shorthand alias for accessing reusable UI components from the Design System.
///
/// Example:
/// ```swift
/// DSComponent.Buttons.FilledPressedButtonStyle(...)
/// ```
public typealias DSComponent = DesignSystem.Components
