//
//  Gradient+ButtonStyle.swift
//  HikingApp
//
//  Created by Steven Santeliz on 12/3/24.
//

import SwiftUI

private enum GradientConstants {
    static let horizontalPadding: CGFloat = 30
    static let cornerRadius: CGFloat = 40
}

// MARK: - Gradient Button Style

struct GradientButton: ButtonStyle {
    @ViewBuilder
    func makeBody(configuration: Configuration) -> some View {
        let colors: [Color] = [.colorGrayLight, .colorGrayMedium]
        
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, GradientConstants.horizontalPadding)
            .background(
                LinearGradient(
                    colors: configuration.isPressed ? colors : colors.reversed(),
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .clipShape(RoundedRectangle(cornerRadius: GradientConstants.horizontalPadding))
    }
}
