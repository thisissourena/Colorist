//
//  ContentView.swift
//  Colorist
//
//  Created by sourena shadmahani on 9/28/21.

import SwiftUI

struct ContentView: View {
    
    @State private var value:Double = 0.5
    var body: some View {
        VStack{
            Circle()
                .fill(Color.blue)
            Text("R:???,G:???,B:???")
            Circle()
                .fill(Color.red)
            Text("R:???,G:???,B:???")
            
            ColorSlider(value: $value, color: .red)
            ColorSlider(value: $value, color: .green)
            ColorSlider(value: $value, color: .blue)
            
            FancyButton(text: "Hit me")

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
