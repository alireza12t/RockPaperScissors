//
//  ResultView.swift Copyright Dim Sum Thinking
//

import SwiftUI

struct ResultView {
    let imageName: String
    let imageColor: Color
}

extension ResultView: View {
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .font(.title)
                .foregroundColor(imageColor)
        }
    }
}

