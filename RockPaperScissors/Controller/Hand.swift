//
//  Hand.swift Copyright Dim Sum Thinking
//

import Combine
import SwiftUI

class Hand {
    @Published var handPosition: HandPosition = .rock
    
    lazy private(set) var imageName: AnyPublisher<String, Never> =
        $handPosition               // Pub<HandPosition, Never>
        .dropFirst()                // Pub<HandPosition, Never>
        .map(\.imageName)           // Pub<String, Never>
        .receive(on: RunLoop.main)  // Pub<String, Never>
        .eraseToAnyPublisher()
}


