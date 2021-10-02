//
//  ContentView.swift
//  Colorist
//
//  Created by sourena shadmahani on 9/28/21.

import SwiftUI

struct ContentView: View {
    @State var rgb: RGB
    @State var game = Game()
    @State private var value:Double = 0.5
    @State private var showAlert = false
    
    var body: some View {
        VStack{
            FancyCircle(rgb: game.target)
            Text("R:???,G:???,B:???")
            FancyCircle(rgb: rgb)
            Text(game.start.intString)
            
            ColorSlider(value: $rgb.red, color: .red)
            ColorSlider(value: $rgb.green, color: .green)
            ColorSlider(value: $rgb.blue, color: .blue)
            
            FancyButton(text: "Hit me")

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rgb: RGB())
    }
}
