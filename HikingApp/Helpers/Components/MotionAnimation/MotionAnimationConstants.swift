//
//  MotionAnimationConstants.swift
//  HikingApp
//
//  Created by Steven Santeliz on 14/3/24.
//

import Foundation

enum MotionAnimationConstants {
    static let zeroValue: Int = 0
    enum Animation { static let duration: CGFloat = 3 }
    
    enum Circle {
        static let opacity: CGFloat = 0.25
        static let defaultScale: CGFloat = 1
        static let min: Int = 6
        static let max: Int = 12
    }
    
    enum Speed {
        static let min: Double = 0.05
        static let max: Double = 1.0
    }
    
    enum Delay {
        static let min: Double = 0
        static let max: Double = 2
    }
    
    enum Scale {
        static let min: CGFloat = 1.0
        static let max: CGFloat = 2.0
    }
    
    enum Coordinate {
        static let min: CGFloat = 0
        static let max: CGFloat = 256
    }
    
    enum Size {
        static let min: CGFloat = 0
        static let max: CGFloat = 80
    }
}
