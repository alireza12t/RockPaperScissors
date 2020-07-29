//
//  PlayersChoice.swift Copyright Dim Sum Thinking
//

import SwiftUI

struct PlayersChoice {
  let game: Game
  @State private var playerSelection: Int = 0
}

extension PlayersChoice: View {
    var body: some View {
      VStack {
        PositionPicker(playerSelection: $playerSelection)
        SubmissionButton(action: updatePlayerSelection)
      }
    }
}

extension PlayersChoice {
  private func updatePlayerSelection() {
    game.setPlayerSelection(playerSelection)
  }
}

