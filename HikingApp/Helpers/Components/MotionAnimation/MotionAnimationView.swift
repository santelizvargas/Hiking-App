//
//  MotionAnimationView.swift
//  HikingApp
//
//  Created by Steven Santeliz on 14/3/24.
//

import SwiftUI

struct MotionAnimationView: View {
    
    private typealias Constants = MotionAnimationConstants
    
    @State private var randomCircle: Int = Int.random(in: Constants.Circle.min...Constants.Circle.max)
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            ForEach(Constants.zeroValue...randomCircle, id: \.self) { _ in
                Circle()
                    .fill(.white)
                    .opacity(Constants.Circle.opacity)
                    .frame(width: randomSize)
                    .scaleEffect(isAnimating ? randomScale : Constants.Circle.defaultScale)
                    .position(
                        x: randomCoordinate,
                        y: randomCoordinate
                    )
            }
        }
        .mask(Circle())
        .onAppear {
            withAnimation(
                .interpolatingSpring(duration: Constants.Animation.duration)
                .repeatForever()
                .speed(randomSpeed)
                .delay(randomDelay)
            ) {
                isAnimating.toggle()
            }
        }
        .drawingGroup()
    }
    
    private var randomSpeed: Double {
        Double.random(in: Constants.Speed.min...Constants.Speed.max)
    }
    
    private var randomDelay: Double {
        Double.random(in: Constants.Delay.min...Constants.Delay.max)
    }
    
    private var randomScale: CGFloat {
        CGFloat.random(in: Constants.Scale.min...Constants.Scale.max)
    }
    
    private var randomSize: CGFloat {
        CGFloat.random(in: Constants.Size.min...Constants.Size.max)
    }
    private var randomCoordinate: CGFloat {
        CGFloat.random(in: Constants.Coordinate.min...Constants.Coordinate.max)
    }
}

#Preview {
    MotionAnimationView()
        .frame(width: 256, height: 256)
        .background(Color.accentColor)
    
}
