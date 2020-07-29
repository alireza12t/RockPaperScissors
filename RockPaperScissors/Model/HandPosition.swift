//
//  HandPosition.swift Copyright Dim Sum Thinking
//

enum HandPosition: String, CaseIterable {
  case rock
  case paper
  case scissors
}

extension HandPosition: CustomStringConvertible {
  var description: String {
    rawValue.capitalized
  }
}

extension HandPosition {
  var imageName: String {
    switch self {
    case .rock:
      return "speedometer"
    case .paper:
      return "paperplane"
    case .scissors:
      return "scissors"
    }
  }
}

extension HandPosition: Equatable, Comparable {
    static func < (lhs: HandPosition, rhs: HandPosition) -> Bool {
        switch (lhs, rhs) {
        case (.rock, .paper),
             (.paper, .scissors),
             (.scissors, .rock):
            return true
        default:
            return false
        }
    }
}
