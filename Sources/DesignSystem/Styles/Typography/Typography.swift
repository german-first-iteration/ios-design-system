//
//  Typography.swift
//  DesignSystem
//
//  Created by Muhammad Qadri on 01.04.25.
//

import SwiftUI

public extension DesignSystem.Styles.Typography {
  struct Display {
    public static let large = Font.custom("Roboto", size: 57)
    public static let medium = Font.custom("Roboto", size: 45)
    public static let small = Font.custom("Roboto", size: 36)
  }
  
  struct Headline {
    public static let large = Font.custom("Roboto", size: 32)
    public static let medium = Font.custom("Roboto", size: 28)
    public static let small = Font.custom("Roboto", size: 24)
  }
  
  struct Title {
    public static let large = Font.custom("Roboto-Regular", size: 22)
    public static let medium = Font.custom("Roboto-Medium", size: 16)
    public static let small = Font.custom("Roboto-Medium", size: 14)
  }
  
  struct Label {
    public static let large = Font.custom("Roboto-Medium", size: 14)
    public static let medium = Font.custom("Roboto-Medium", size: 12)
    public static let small = Font.custom("Roboto-Medium", size: 11)
  }
  
  struct Body {
    public static let large = Font.custom("Roboto", size: 16)
    public static let medium = Font.custom("Roboto", size: 14)
    public static let small = Font.custom("Roboto", size: 12)
  }
}
