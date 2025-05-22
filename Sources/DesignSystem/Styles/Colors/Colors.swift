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
  static let background = Color("Background", bundle: .module)
  static let onPrimaryPID = Color("OnPrimaryPID", bundle: .module)
  static let onSurfaceVariant = Color("OnSurfaceVariant", bundle: .module)
  static let onSurface = Color("OnSurface", bundle: .module)
  static let outlineVariant = Color("OutlineVariant", bundle: .module)
  static let primaryPID = Color("PrimaryPID", bundle: .module)
  static let outline = Color("Outline", bundle: .module)
  static let primary = Color("Primary", bundle: .module)
  static let primaryContainer = Color("PrimaryContainer", bundle: .module)
  static let onSurfaceBrightest = Color("OnSurfaceBrightest", bundle: .module)
  static let inverseOnSurface = Color("InverseOnSurface", bundle: .module)
  
  /// The primary brand color used for main actions and highlights.
  // MARK: Primary Tonal Palette
  static let primary0 = Color(hex: "#000000")
  static let primary10 = Color(hex: "#21005D")
  static let primary20 = Color(hex: "#381E72")
  static let primary30 = Color(hex: "#4F378B")
  static let primary40 = Color(hex: "#6750A4")
  static let primary50 = Color(hex: "#7F67BE")
  static let primary60 = Color(hex: "#9A82DB")
  static let primary70 = Color(hex: "#B69DF8")
  static let primary80 = Color(hex: "#D0BCFF")
  static let primary90 = Color(hex: "#EADDFF")
  static let primary95 = Color(hex: "#F6EEFF")
  static let primary99 = Color(hex: "#FFFBFE")
  static let primary100 = Color(hex: "#FFFFFF")
  
  // MARK: Secondary Tonal Palette
  static let secondary0 = Color(hex: "#000000")
  static let secondary10 = Color(hex: "#1D192B")
  static let secondary20 = Color(hex: "#332D41")
  static let secondary30 = Color(hex: "#4A4458")
  static let secondary40 = Color(hex: "#625B71")
  static let secondary50 = Color(hex: "#7A7289")
  static let secondary60 = Color(hex: "#958DA5")
  static let secondary70 = Color(hex: "#B0A7C0")
  static let secondary80 = Color(hex: "#CCC2DC")
  static let secondary90 = Color(hex: "#E8DEF8")
  static let secondary95 = Color(hex: "#F6EEFF")
  static let secondary99 = Color(hex: "#FFFBFE")
  static let secondary100 = Color(hex: "#FFFFFF")
  
  // MARK: Tertiary Tonal Palette
  static let tertiary0 = Color(hex: "#000000")
  static let tertiary10 = Color(hex: "#31111D")
  static let tertiary20 = Color(hex: "#492532")
  static let tertiary30 = Color(hex: "#633B48")
  static let tertiary40 = Color(hex: "#7D5260")
  static let tertiary50 = Color(hex: "#986977")
  static let tertiary60 = Color(hex: "#B58392")
  static let tertiary70 = Color(hex: "#D29DAC")
  static let tertiary80 = Color(hex: "#EFB8C8")
  static let tertiary90 = Color(hex: "#FFD8E4")
  static let tertiary95 = Color(hex: "#FFECF1")
  static let tertiary99 = Color(hex: "#FFFBFA")
  static let tertiary100 = Color(hex: "#FFFFFF")
  
  // MARK: Error Tonal Palette
  static let error0 = Color(hex: "#000000")
  static let error10 = Color(hex: "#410E0B")
  static let error20 = Color(hex: "#601410")
  static let error30 = Color(hex: "#8C1D18")
  static let error40 = Color(hex: "#B3261E")
  static let error50 = Color(hex: "#DC362E")
  static let error60 = Color(hex: "#E46962")
  static let error70 = Color(hex: "#EC928E")
  static let error80 = Color(hex: "#F2B8B5")
  static let error90 = Color(hex: "#F9DEDC")
  static let error95 = Color(hex: "#FCEEEE")
  static let error99 = Color(hex: "#FFFBF9")
  static let error100 = Color(hex: "#FFFFFF")
  
  // MARK: Neutral Tonal Palette
  static let neutral0 = Color(hex: "#000000")
  static let neutral10 = Color(hex: "#1C1B1F")
  static let neutral20 = Color(hex: "#313033")
  static let neutral30 = Color(hex: "#484649")
  static let neutral40 = Color(hex: "#605D62")
  static let neutral50 = Color(hex: "#78767A")
  static let neutral60 = Color(hex: "#939094")
  static let neutral70 = Color(hex: "#AEAAAE")
  static let neutral80 = Color(hex: "#C9C5CA")
  static let neutral90 = Color(hex: "#E6E1E5")
  static let neutral95 = Color(hex: "#F4EFF4")
  static let neutral99 = Color(hex: "#FFFBFE")
  static let neutral100 = Color(hex: "#FFFFFF")
  
  // MARK: Neutral Variant Tonal Palette
  static let neutralVariant0 = Color(hex: "#000000")
  static let neutralVariant10 = Color(hex: "#1D1A22")
  static let neutralVariant20 = Color(hex: "#322F37")
  static let neutralVariant30 = Color(hex: "#49454F")
  static let neutralVariant40 = Color(hex: "#615D66")
  static let neutralVariant50 = Color(hex: "#7A757F")
  static let neutralVariant60 = Color(hex: "#938F99")
  static let neutralVariant70 = Color(hex: "#AEA9B4")
  static let neutralVariant80 = Color(hex: "#CAC4D0")
  static let neutralVariant90 = Color(hex: "#E7E0EC")
  static let neutralVariant95 = Color(hex: "#F5EEFA")
  static let neutralVariant99 = Color(hex: "#FFFBFE")
  static let neutralVariant100 = Color(hex: "#FFFFFF")
  
  // MARK: Light Theme
  static let lightBackground = Color(hex: "#FEF7FF")
  static let lightOutline = Color(hex: "#79747E")
  static let lightOutlineVariant = Color(hex: "#CAC4D0")
  static let lightHighlight = Color(hex: "#546E7AEE")
  static let lightPrimaryContainer = Color(hex: "#EADDFF")
  static let lightPrimary = Color(hex: "#6750A4")
  static let lightOnSurface = Color(hex: "#1D1B20")
  static let lightOnPrimary = Color(hex: "#FFFFFF")
  static let lightOnPrimaryPID = Color(hex: "#546E7A")
  static let disabledBackgroundColor = Color(hex: "#1D1B201F")
  
  //MARK: List of all colors for easy access
  static let primaryColors: (String, [String: Color]) = (
    "Primary Tonal Colors",
    [
      "Primary 0": primary0, "Primary 10": primary10, "Primary 20": primary20,
      "Primary 30": primary30, "Primary 40": primary40, "Primary 50": primary50,
      "Primary 60": primary60, "Primary 70": primary70, "Primary 80": primary80,
      "Primary 90": primary90, "Primary 95": primary95, "Primary 99": primary99,
      "Primary 100": primary100
    ]
  )
  static let secondaryColors: (String, [String: Color]) = (
    "Secondary Tonal Colors",
    [
      "Secondary 0": secondary0, "Secondary 10": secondary10, "Secondary 20": secondary20,
      "Secondary 30": secondary30, "Secondary 40": secondary40, "Secondary 50": secondary50,
      "Secondary 60": secondary60, "Secondary 70": secondary70, "Secondary 80": secondary80,
      "Secondary 90": secondary90, "Secondary 95": secondary95, "Secondary 99": secondary99,
      "Secondary 100": secondary100
    ]
  )
  
  static let tertiaryColors: (String, [String: Color]) = (
    "Tertiary Tonal Colors",
    [
      "Tertiary 0": tertiary0, "Tertiary 10": tertiary10, "Tertiary 20": tertiary20,
      "Tertiary 30": tertiary30, "Tertiary 40": tertiary40, "Tertiary 50": tertiary50,
      "Tertiary 60": tertiary60, "Tertiary 70": tertiary70, "Tertiary 80": tertiary80,
      "Tertiary 90": tertiary90, "Tertiary 95": tertiary95, "Tertiary 99": tertiary99,
      "Tertiary 100": tertiary100
    ]
  )
  
  static let errorColors: (String, [String: Color]) = (
    "Error Tonal Colors",
    [
      "Error 0": error0, "Error 10": error10, "Error 20": error20,
      "Error 30": error30, "Error 40": error40, "Error 50": error50,
      "Error 60": error60, "Error 70": error70, "Error 80": error80,
      "Error 90": error90, "Error 95": error95, "Error 99": error99,
      "Error 100": error100
    ]
  )
  
  static let neutralColors: (String, [String: Color]) = (
    "Neutral Tonal Colors",
    [
      "Neutral 0": neutral0, "Neutral 10": neutral10, "Neutral 20": neutral20,
      "Neutral 30": neutral30, "Neutral 40": neutral40, "Neutral 50": neutral50,
      "Neutral 60": neutral60, "Neutral 70": neutral70, "Neutral 80": neutral80,
      "Neutral 90": neutral90, "Neutral 95": neutral95, "Neutral 99": neutral99,
      "Neutral 100": neutral100
    ]
  )
  
  static let neutralVariantColors: (String, [String: Color]) = (
    "Neutral Variant Tonal Colors",
    [
      "Neutral Variant 0": neutralVariant0, "Neutral Variant 10": neutralVariant10,
      "Neutral Variant 20": neutralVariant20, "Neutral Variant 30": neutralVariant30,
      "Neutral Variant 40": neutralVariant40, "Neutral Variant 50": neutralVariant50,
      "Neutral Variant 60": neutralVariant60, "Neutral Variant 70": neutralVariant70,
      "Neutral Variant 80": neutralVariant80, "Neutral Variant 90": neutralVariant90,
      "Neutral Variant 95": neutralVariant95, "Neutral Variant 99": neutralVariant99,
      "Neutral Variant 100": neutralVariant100
    ]
  )
}
