//
//  PositionPicker.swift Copyright Dim Sum Thinking
//

import SwiftUI

struct PositionPicker {
  @Binding var playerSelection: Int
}

extension PositionPicker: View {
  var body: some View {
    Picker(selection: $playerSelection,
           label: Text("Chosen HandPosition")) {
      ForEach(handPositions.indices){index in
        Text(handPositions[index].description)
      }
    }
    .pickerStyle(SegmentedPickerStyle())
    .padding()
  }
}
