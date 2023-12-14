//
//  DeckViewer.swift
//  studytool
//
//  Created by Joel Tan on 13/12/2023.
//

import SwiftUI

var TestDeck: [CardData] = [
    CardData(frontText: "Hello", backText: "There", cardID: UUID()),
    CardData(frontText: "What is the weight of the sun?", backText: "idk lol did you expect me to actually put that in", cardID: UUID()),
    CardData(frontText: "Hotel?", backText: "Trivago 😦", cardID: UUID())
]

struct DeckViewer: View {
    @State var currentCardIndex = 0
    
    func progressHandler(progress: String) {
        TestDeck[currentCardIndex].cardHistory.append(CardRevealMoment(time: Date(), rating: progress))
        if (currentCardIndex < TestDeck.count - 1) {
            currentCardIndex += 1
        }
        else {
            currentCardIndex = 0
        }
    }
    
    var body: some View {
        HStack {
            CardViewer(cardData: TestDeck[currentCardIndex], progressHandler: progressHandler)
                .padding()
//            Text("Last Rating for this card: " + (TestDeck[currentCardIndex].cardHistory.last?.rating ?? "none"))
        }
    }
}

#Preview {
    ZStack {
        Background()
        DeckViewer()
    }
}
