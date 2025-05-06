//
//  File.swift
//  DesignSystem
//
//  Created by Pankaj Sachdeva on 02.05.25.
//

import CoreGraphics
import CoreText
import UIKit

public extension UIFont {
  public static func loadFonts() {
    registerFont(withName: "Roboto", fileExtension: "ttf")
    registerFont(withName: "Roboto-Black", fileExtension: "ttf")
    registerFont(withName: "Roboto-BlackItalic", fileExtension: "ttf")
    registerFont(withName: "Roboto-Bold", fileExtension: "ttf")
    registerFont(withName: "Roboto-BoldItalic", fileExtension: "ttf")
    registerFont(withName: "Roboto-Italic", fileExtension: "ttf")
    registerFont(withName: "Roboto-Light", fileExtension: "ttf")
    registerFont(withName: "Roboto-LightItalic", fileExtension: "ttf")
    registerFont(withName: "Roboto-Medium", fileExtension: "ttf")
    registerFont(withName: "Roboto-MediumItalic", fileExtension: "ttf")
    registerFont(withName: "Roboto-Regular", fileExtension: "ttf")
    registerFont(withName: "Roboto-Thin", fileExtension: "ttf")
    registerFont(withName: "Roboto-ThinItalic", fileExtension: "ttf")
  }
  
  private static func registerFont(withName name: String, fileExtension: String) {
    let frameworkBundle = Bundle.module
    guard let url = frameworkBundle.url(forResource: name, withExtension: fileExtension),
          let fontDataProvider = CGDataProvider(url: url as CFURL),
          let font = CGFont(fontDataProvider)
    else {
      print("Failed to load font \(name).\(fileExtension)")
      return
    }
    
    var error: Unmanaged<CFError>?
    if !CTFontManagerRegisterGraphicsFont(font, &error) {
      print("Failed to register font: \(error?.takeRetainedValue().localizedDescription ?? "unknown error")")
    }
  }
}
