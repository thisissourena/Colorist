//
//  ContentView.swift
//  Colorist
//
//  Created by sourena shadmahani on 9/28/21.

import SwiftUI

struct ContentView: View {
    
    @State var game = Game()
    @State var guess: RGB
    
    @State var ShowAlert = false
    
    let circleSize: CGFloat = 0.5
    let labelWidth: CGFloat = 0.53
    let labelHeight: CGFloat = 0.06
    let buttonWidth: CGFloat = 0.87
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                Color.element
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    FancyCircle(rgb: game.target, size: proxy.size.width * circleSize)
                    
                    if !ShowAlert {
                        FancyText(text: "R:???,G:???,B:???", width: proxy.size.width * labelWidth, height: proxy.size.height * labelHeight)
                       
                    }else{
                        FancyText(text: game.target.intString, width: proxy.size.width * labelWidth, height: proxy.size.height * labelHeight)
                    }
                    
                    
                    FancyCircle(rgb: guess, size: proxy.size.width * circleSize)
                    
                    FancyText(text: guess.intString, width: proxy.size.width * labelWidth, height: proxy.size.height * labelHeight)
                    
                    
                    ColorSlider(value: $guess.red, color: .red)
                    ColorSlider(value: $guess.green, color: .green)
                    ColorSlider(value: $guess.blue, color: .blue)
                    
                    Button("Hit Me!"){
                        ShowAlert = true
                        self.game.check(guess: guess)
                        
                    }
                    .buttonStyle(
                        FancyButton(width: proxy.size.width * buttonWidth, height: proxy.size.height * labelHeight)
                    )
                    .alert(isPresented: $ShowAlert) {
                        Alert(title: Text("Your Score"), message: Text(String(game.scoreRound)), dismissButton: .default(Text("OK")) {
                            game.startNewGame()
                            self.guess = RGB()
                        })
                    }
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(guess: RGB())
            ContentView(guess: RGB())
                .previewDevice("iPhone 8 Plus")
        }
    }
}
