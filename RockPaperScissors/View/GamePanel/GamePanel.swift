//
//  GamePanel.swift Copyright Dim Sum Thinking
//

import SwiftUI

struct GamePanel {
    @ObservedObject var game: Game
}

extension GamePanel: View {
    var body: some View {
        VStack(spacing: 40) {
            ResultView(imageName: game.resultImageName,
                       imageColor: game.resultImageColor)
            
            HStack(alignment: .bottom, spacing: 60) {
                PositionView(name: "Player",
                             imageName: game.playerImageName)
                
                PositionView(name: "Response",
                             imageName: game.responseImageName)
            }
        }
    }
}

