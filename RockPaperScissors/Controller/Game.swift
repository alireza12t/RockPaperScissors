//
//  Game.swift Copyright Dim Sum Thinking
//

import SwiftUI
import Combine

class Game: ObservableObject {
  // MARK: - Private properties
  private let player = Player()
  private let response = Response()
  lazy private var scorer = Scorer(player: player,
                                   response: response)
  private var cancellables = Set<AnyCancellable>()    //DisposeBag

  
  // MARK: - Properties to fill the View
  @Published var playerImageName: String = emptyImageName
  @Published var responseImageName: String = emptyImageName
  @Published var resultImageName: String = emptyImageName
  @Published var resultImageColor: Color = .secondary
  
  init() {
    setUpPublishers()
  }
}
// MARK: - Combine extension to set up Publishers
extension Game {
    private func setUpPublishers() {
        publishPlayerSelection()
        initiateResponse()
        publishResponseSelection()
        publishResult()
    }
    
    private func publishPlayerSelection(){
        player.imageName
            .assign(to: &$playerImageName)
    }
    
    private func initiateResponse(){
        $playerImageName
            .sink(receiveValue: {[weak self] _ in
                self?.response.selectRandomPosition()
            })
            .store(in: &cancellables)
    }
    
    private func publishResponseSelection(){
        response.imageName
            .assign(to: &$responseImageName)
    }
    
    private func publishResult(){
        scorer.result
            .receive(on: RunLoop.main)
            .sink {[weak self] result in
                self?.resultImageName = result.imageName
                self?.resultImageColor = result.imageColor
            }
        
            .store(in: &cancellables)
    }
}

// MARK: - Non-Combine extension to set player choice
extension Game {
    var setPlayerSelection: (Int) -> Void {
        player.setPosition
    }
}
