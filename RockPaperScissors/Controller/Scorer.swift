//
//  Scorer.swift Copyright Dim Sum Thinking
//
import Combine

struct Scorer {
    let player: Player
    let response: Response
    
    lazy private(set) var result: AnyPublisher<GameResult, Never> =
        player.$handPosition          //Pub<HP, Never>
        .zip(response.$handPosition)  //Pub<(HP, HP), Never>
        .dropFirst()                  //Pub<(HP, HP), Never>
        .map{ (playerHandPosition, responseHandPosition) in
            gameResultForPlayer(playerHandPosition, given: responseHandPosition)
        }                              //Pub<GameResult, Never>
        .eraseToAnyPublisher()
}

fileprivate func gameResultForPlayer(_ first: HandPosition,
                                     given second: HandPosition) -> GameResult {
    if first == second { return .draw}
    else if first < second {return .lose}
    return .win
}

