//
//  FancyCircle.swift
//  FancyCircle
//
//  Created by sourena shadmahani on 10/2/21.
//

import SwiftUI

struct FancyCircle: View {
    
    var rgb: RGB
    var body: some View {
        Circle()
            .fill(Color(rgbStruct: RGB(red: rgb.red, green: rgb.green, blue: rgb.blue)))
    }
}
