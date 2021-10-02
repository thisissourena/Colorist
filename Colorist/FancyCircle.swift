//
//  FancyCircle.swift
//  FancyCircle
//
//  Created by sourena shadmahani on 9/29/21.
//

import SwiftUI

struct FancyCircle: View {
    
    var rgb: RGB
    var body: some View {
        Circle()
            .fill(Color(rgbStruct: rgb))
    }
}
