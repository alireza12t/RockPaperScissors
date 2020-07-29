//
//  ContentView.swift Copyright Dim Sum Thinking
//

import SwiftUI

struct GameView {
  @StateObject var game = Game()
}

extension GameView: View {
    var body: some View {
      VStack {
        GamePanel(game: game)
        PlayersChoice(game: game)
      }
    }
}

