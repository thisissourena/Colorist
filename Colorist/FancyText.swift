//
//  FancyText.swift
//  FancyText
//
//  Created by sourena shadmahani on 10/2/21.
//

import SwiftUI

struct FancyText: View {
    
    let text: String
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        Text(text)
            .frame(width: width, height: height)
            .background(
                ZStack {
                  Capsule()
                    .fill(Color.element)
                    .northWestShadow(radius: 3, offset: 1)
                  Capsule()
                    .inset(by: 3)
                    .fill(Color.element)
                    .southEastShadow(radius: 1, offset: 1)
                }
            )
    }
}
