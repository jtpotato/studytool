//
//  Card.swift
//  studytool
//
//  Created by Joel Tan on 13/12/2023.
//

import SwiftUI

struct CardFace: View {
    let vanishingPoint: CGFloat = 0.5;
    var cardText: String;
    @Binding var rotationAngle: Double;
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 24, style: .continuous)
                .foregroundStyle(.regularMaterial)
            Text(cardText)
                    .font(.largeTitle)
        }.rotation3DEffect(
            Angle(degrees: rotationAngle), axis: (x: 0.0, y: 1.0, z: 0.0), perspective: vanishingPoint
        )
    }
}

struct Card: View {
    let animationLength: CGFloat = 0.05
    
    var frontText: String;
    var backText: String;
    
    @State var showFront: Bool = true;
    @State var rotationFront: Double = 0;
    @State var rotationBack: Double = 90;
    
    func startFlip() {
        // print("Something has happened")
        showFront = !showFront
        
        if showFront {
            withAnimation(.linear(duration: animationLength)) {
                rotationBack = 90
            }
            withAnimation(.linear(duration: animationLength).delay(animationLength)) {
                rotationFront = 0
            }
        }
        else {
            withAnimation(.linear(duration: animationLength)) {
                rotationFront = -90
            }
            withAnimation(.linear(duration: animationLength).delay(animationLength)) {
                rotationBack = 0
            }
        }
    }
    
    var body: some View {
        ZStack {
            CardFace(cardText: frontText, rotationAngle: $rotationFront)
            CardFace(cardText: backText, rotationAngle: $rotationBack)
        }.onTapGesture {
            startFlip()
        }
    }
}

#Preview {
    Card(frontText: "Hello There", backText: "This is a card.")
        .padding(70)
}
