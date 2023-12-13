//
//  CustomButtonStyle.swift
//  studytool
//
//  Created by Joel Tan on 13/12/2023.
//

import SwiftUI

public struct CustomButtonStyle: ButtonStyle {
    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(Font.body.weight(.medium))
            .padding(.vertical, 12)
            .foregroundColor(Color.gray)
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 14.0, style: .continuous)
                    .fill(.regularMaterial)
                )
            .opacity(configuration.isPressed ? 0.4 : 1.0)
    }
}
