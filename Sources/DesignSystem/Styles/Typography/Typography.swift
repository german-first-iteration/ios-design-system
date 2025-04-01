//
//  Typography.swift
//  DesignSystem
//
//  Created by Muhammad Qadri on 01.04.25.
//

import SwiftUI

public extension DesignSystem.Styles.Typography {
  struct Display {
    static let large = Font.custom("Roboto", size: 57)
    static let medium = Font.custom("Roboto", size: 45)
    static let small = Font.custom("Roboto", size: 36)
  }
  
  struct Headline {
    static let large = Font.custom("Roboto", size: 32)
    static let medium = Font.custom("Roboto", size: 28)
    static let small = Font.custom("Roboto", size: 24)
  }
  
  struct Title {
    static let large = Font.custom("Roboto-Regular", size: 22)
    static let medium = Font.custom("Roboto-Medium", size: 16)
    static let small = Font.custom("Roboto-Medium", size: 14)
  }
  
  struct Label {
    static let large = Font.custom("Roboto-Medium", size: 14)
    static let medium = Font.custom("Roboto-Medium", size: 12)
    static let small = Font.custom("Roboto-Medium", size: 11)
  }
  
  struct Body {
    static let large = Font.custom("Roboto", size: 16)
    static let medium = Font.custom("Roboto", size: 14)
    static let small = Font.custom("Roboto", size: 12)
  }
}
