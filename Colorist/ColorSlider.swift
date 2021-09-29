//
//  ColorSlider.swift
//  ColorSlider
//
//  Created by sourena shadmahani on 9/29/21.
//

import SwiftUI

struct ColorSlider: View {
    
    @Binding var value: Double
    var color: Color
    
    var body: some View {
        HStack {
            Text("0")
            Slider(value: $value)
                .accentColor(color)
            Text("255")
        }
        .font(.subheadline)
        .padding(.horizontal)
    }
}
