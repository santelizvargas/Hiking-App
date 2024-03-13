//
//  CustomBackgroundView.swift
//  HikingApp
//
//  Created by Steven Santeliz on 12/3/24.
//

import SwiftUI

// MARK: - View Constans

private enum Constants {
    enum Rectangle {
        static let cornerRadius: CGFloat = 40
    }
    
    enum Offset {
        static let depth: CGFloat = 12
        static let light: CGFloat = 3
    }
}

// MARK: - Custom Background View

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // MARK: - Depth Color
            
            Color(.colorGreenDark)
                .clipShape(RoundedRectangle(cornerRadius: Constants.Rectangle.cornerRadius))
                .offset(y: Constants.Offset.depth)
            
            // MARK: - Light Color
            
            Color(.colorGreenLight)
                .clipShape(RoundedRectangle(cornerRadius: Constants.Rectangle.cornerRadius))
                .offset(y: Constants.Offset.light)
            
            // MARK: - Surface
            
            LinearGradient(
                colors: [
                    .colorGreenLight,
                    .colorGreenMedium
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .clipShape(RoundedRectangle(cornerRadius: Constants.Rectangle.cornerRadius))
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
