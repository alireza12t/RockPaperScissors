//
//  HandPositionHelpers.swift Copyright Dim Sum Thinking
//

let handPositions = HandPosition.allCases
let numberOfHandPositions = handPositions.count

func createHandPosition(for index: Int) -> HandPosition {
  assert((0...numberOfHandPositions).contains(index),
         "Input must be between 0 and \(numberOfHandPositions)")
  return handPositions[index]
}

func randomHandPosition() -> HandPosition {
  return handPositions.randomElement()!
}
