//
//  ColorExtention.swift
//  ColorExtention
//
//  Created by sourena shadmahani on 10/2/21.
//

import Foundation
import SwiftUI

extension Color {
  /// Create a Color view from an RGB object.
  ///   - parameters:
  ///     - rgb: The RGB object.
  init(rgbStruct rgb: RGB) {
    self.init(red: rgb.red, green: rgb.green, blue: rgb.blue)
  }

  // Add Neumorphism colors to standard colors
  static let element = Color("Element")
  static let highlight = Color("Highlight")
  static let shadow = Color("Shadow")
}
