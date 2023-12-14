//
//  CardViewer.swift
//  studytool
//
//  Created by Joel Tan on 13/12/2023.
//

import SwiftUI

struct CardViewer: View {
    typealias ProgressHandler = (String) -> Void
    
    var cardData: CardData;
    var progressHandler: ProgressHandler;
    
    var body: some View {
        VStack(alignment: .center) {
            Card(frontText: cardData.frontText, backText: cardData.backText)
            HStack {
                Button(action: {
                    progressHandler("v_bad")
                }) {
                    Image(systemName: "hand.thumbsdown.fill")
                }
                .buttonStyle(CustomButtonStyle())
                Button(action: {
                    progressHandler("bad")
                }) {
                    Image(systemName: "hand.thumbsdown")
                }
                .buttonStyle(CustomButtonStyle())
                Button(action: {
                    progressHandler("good")
                }) {
                    Image(systemName: "hand.thumbsup")
                }
                .buttonStyle(CustomButtonStyle())
                Button(action: {
                    progressHandler("v_good")
                }) {
                    Image(systemName: "hand.thumbsup.fill")
                }
                .buttonStyle(CustomButtonStyle())
            }
        }
        .frame(width: 700.0, height: 500.0)
    }
}

private func dummyProgressHandler(progress: String) {
    print(progress)
}

#Preview {
    ZStack {
        Background()
        CardViewer(cardData: CardData(frontText: "Hello", backText: "There", cardID: UUID()), progressHandler: dummyProgressHandler)
            .padding()
    }
}
