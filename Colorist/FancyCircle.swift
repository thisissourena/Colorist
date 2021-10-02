//
//  FancyCircle.swift
//  FancyCircle
//
//  Created by sourena shadmahani on 10/2/21.
//

import SwiftUI

struct FancyCircle: View {
    
    var color: Color
    var body: some View {
        Circle()
            .fill(color)
    }
}
