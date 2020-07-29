//
//  Player.swift Copyright Dim Sum Thinking
//

class Player: Hand {
    func setPosition(to int: Int) {
        handPosition = createHandPosition(for: int)
    }
}
