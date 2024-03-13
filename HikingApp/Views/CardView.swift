//
//  CardView.swift
//  HikingApp
//
//  Created by Steven Santeliz on 12/3/24.
//

import SwiftUI

private enum Constants {
    enum Circle {
        static let size: CGFloat = 256
    }
    
    enum Card {
        static let width: CGFloat = 320
        static let height: CGFloat = 570
    }
}

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            
            Circle()
                .fill(
                    LinearGradient(
                        themeColors: [.colorIndigoMedium, .colorOrangeMedium],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: Constants.Circle.size)
            
            ThemeFactory.image(.image1)
                .scaledToFit()
        }
        .frame(width: Constants.Card.width,
               height: Constants.Card.height)
    }
}

#Preview {
    CardView()
}
