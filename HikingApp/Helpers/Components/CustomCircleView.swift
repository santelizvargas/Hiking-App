//
//  CustomCircleView.swift
//  HikingApp
//
//  Created by Steven Santeliz on 13/3/24.
//

import SwiftUI

private enum Constants {
    enum Circle { static let size: CGFloat = 256 }
    enum Animation { static let duration: CGFloat = 3 }
}

struct CustomCircleView: View {
    @State private var isGradientAnimation: Bool = false
    
    var body: some View {
        Circle()
            .fill(
                LinearGradient(
                    colors: [
                        .colorIndigoMedium,
                        .colorOrangeMedium
                    ],
                    startPoint: isGradientAnimation ? .topLeading : .bottomLeading,
                    endPoint: isGradientAnimation ? .bottomTrailing : .topTrailing
                )
            )
            .frame(width: Constants.Circle.size)
            .overlay { MotionAnimationView() }
            .onAppear {
                withAnimation(
                    .linear(duration: Constants.Animation.duration)
                    .repeatForever()
                ) {
                    isGradientAnimation.toggle()
                }
            }
    }
}

#Preview {
    CustomCircleView()
}
