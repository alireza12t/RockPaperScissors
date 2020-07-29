//
//  SubmissionButton.swift Copyright Dim Sum Thinking
//

import SwiftUI

struct SubmissionButton {
  let action: () -> Void
}

extension SubmissionButton: View {
    var body: some View {
      Button("Go",
             action: action)
    }
}

