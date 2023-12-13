//
//  DeckViewer.swift
//  studytool
//
//  Created by Joel Tan on 13/12/2023.
//

import SwiftUI

struct DeckViewer: View {
    func dummyProgressHandler(progress: String) {
        print(progress)
    }
    
    var body: some View {
        CardViewer(frontText: "Hey There", backText: "Uh", progressHandler: dummyProgressHandler)
            .padding()
    }
}

#Preview {
    ZStack {
        Background()
        DeckViewer()
    }
}
