//
//  RoundedCorner.swift
//  DesignSystem
//
//  Created by Muhammad Qadri on 28.05.25.
//
import SwiftUI

public struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
  
  public init(radius: CGFloat, corners: UIRectCorner) {
    self.radius = radius
    self.corners = corners
  }

  public func path(in rect: CGRect) -> Path {
    let path = UIBezierPath(
        roundedRect: rect,
        byRoundingCorners: corners,
        cornerRadii: CGSize(width: radius, height: radius)
    )
    return Path(path.cgPath)
  }
}
