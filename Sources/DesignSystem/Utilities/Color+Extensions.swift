//
//  Color+Extensions.swift
//  DesignSystem
//
//  Created by Muhammad Qadri on 01.04.25.
//

import SwiftUI

public extension Color {
    /// Initialize a Color from a hex code.
    /// - Parameter hex: Hex string in the format "#RRGGBB" or "#RRGGBBAA".
    init(hex: String) {
        let hexSanitized = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&int)
        
        let r, g, b, a: Double
        switch hexSanitized.count {
        case 6: // RGB (No Alpha)
            r = Double((int >> 16) & 0xFF) / 255
            g = Double((int >> 8) & 0xFF) / 255
            b = Double(int & 0xFF) / 255
            a = 1.0
        case 8: // RGBA
            r = Double((int >> 24) & 0xFF) / 255
            g = Double((int >> 16) & 0xFF) / 255
            b = Double((int >> 8) & 0xFF) / 255
            a = Double(int & 0xFF) / 255
        default:
            r = 0
            g = 0
            b = 0
            a = 1
        }
        
        self.init(red: r, green: g, blue: b, opacity: a)
    }
}
