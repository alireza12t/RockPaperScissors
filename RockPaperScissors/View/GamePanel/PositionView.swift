//
//  PositionView.swift Copyright Dim Sum Thinking
//

import SwiftUI

struct PositionView {
    let name: String
    let imageName: String
}

extension PositionView: View {
    var body: some View {
        VStack {
            Image(systemName: imageName)
            Text(name)
        }
    }
}
