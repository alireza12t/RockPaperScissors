//
//  GameResult.swift Copyright Dim Sum Thinking
//

import SwiftUI

enum GameResult {
    case win
    case lose
    case draw
}

extension GameResult {
    var imageColor: Color {
        switch self {
        case .win:
            return .green
        case .lose:
            return .red
        case .draw:
            return .secondary
        }
    }
    
    var imageName: String {
        switch self {
        case .win:
            return "hand.thumbsup"
        case .lose:
            return "hand.thumbsdown"
        case .draw:
            return "questionmark"
        }
    }
}
