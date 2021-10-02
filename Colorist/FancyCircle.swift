//
//  FancyCircle.swift
//  FancyCircle
//
//  Created by sourena shadmahani on 10/2/21.
//

import SwiftUI

struct FancyCircle: View {
    
    var rgb: RGB
    var size: CGFloat
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.element)
                .northWestShadow()
            
            Circle()
                .fill(Color(rgbStruct: RGB(red: rgb.red, green: rgb.green, blue: rgb.blue)))
                .padding(20)
        }
        .frame(width: size, height: size)
    }
}

struct FancyCircle_Preview: PreviewProvider {
    
    static var previews: some View {
        ZStack {
            Color.element
            FancyCircle(rgb: RGB(), size: 200)
            
        }
        
        .frame(width: 300, height: 300)
        .previewLayout(.sizeThatFits)
    }
    
    
}
