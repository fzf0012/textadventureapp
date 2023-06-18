//
//  GameFinishedView.swift
//  TextAdventureApp1
//
//  Created by Frank Fukuchi on 6/18/23.
//

import SwiftUI

struct GameFinishedView: View {
    var restartGame: () -> Void
    
    var body: some View {
        VStack {
            Text("Congratulations! You completed the game.")
                .padding()
            
            Button(action: restartGame) {
                Text("Play again?")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}
