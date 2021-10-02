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
    
    var body: some View {
        VStack{
            FancyCircle(rgb: game.target)
            
            if !ShowAlert {
                Text("R:???,G:???,B:???")
            }else{
                Text(game.target.intString)
            }
            
            
            FancyCircle(rgb: guess)
            
            
            Text(guess.intString)
            
            ColorSlider(value: $guess.red, color: .red)
            ColorSlider(value: $guess.green, color: .green)
            ColorSlider(value: $guess.blue, color: .blue)
            
            Button("Hit Me!"){
                ShowAlert = true
                self.game.check(guess: guess)
                
            }
            .alert(isPresented: $ShowAlert) {
                Alert(title: Text("Your Score"), message: Text(String(game.scoreRound)), dismissButton: .default(Text("OK")) {
                    game.startNewGame()
                    self.guess = RGB()
                })
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(guess: RGB())
    }
}
