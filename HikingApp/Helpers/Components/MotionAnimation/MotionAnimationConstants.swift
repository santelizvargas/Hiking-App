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
        static let start: Int = 6
        static let end: Int = 12
    }
    
    enum Speed {
        static let start: Double = 0.05
        static let end: Double = 1.0
    }
    
    enum Delay {
        static let start: Double = 0
        static let end: Double = 2
    }
    
    enum Scale {
        static let start: CGFloat = 1.0
        static let end: CGFloat = 2.0
    }
    
    enum Coordinate {
        static let start: CGFloat = 0
        static let end: CGFloat = 256
    }
    
    enum Size {
        static let start: CGFloat = 0
        static let end: CGFloat = 80
    }
}
