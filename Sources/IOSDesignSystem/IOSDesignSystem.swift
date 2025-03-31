//
//  IOSDesignSystem.swift
//  IOSDesignSystem
//
//  Created by Muhammad Qadri on 29.03.25.
//

import Foundation

/// Using namespace technique to clear the global variables
/// Usage: use DesignSystem and dot to access.
///  1. Styles -> Foundation elements e.g: Colors
///  2. Components -> Combination of foundation elements, e.g: Buttons
public struct DesignSystem {
      public struct Styles {
        public struct Colors {}
      }
      public struct Components { }  // Defined in Components/
}
