//
//  Background.swift
//  studytool
//
//  Created by Joel Tan on 13/12/2023.
//

import SwiftUI

extension Color {
    init(hex: Int, opacity: Double = 1.0) {
        let red = Double((hex & 0xff0000) >> 16) / 255.0
        let green = Double((hex & 0xff00) >> 8) / 255.0
        let blue = Double((hex & 0xff) >> 0) / 255.0
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}

struct Background: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color(hex: 0xffcccc), Color(hex: 0xccccff)]), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}

#Preview {
    Background()
}
