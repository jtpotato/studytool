//
//  ContentView.swift
//  studytool
//
//  Created by Joel Tan on 13/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Background()
            DeckViewer()
                .padding()
        }
    }
}
