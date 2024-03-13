//
//  ThemeFactory.swift
//  HikingApp
//
//  Created by Steven Santeliz on 12/3/24.
//

import SwiftUI

enum ThemeFactory { }

// MARK: -  Theme Factory Colors

extension ThemeFactory: ThemeFactoryColors {
    static func color(_ color: ThemeColors) -> Color {
        Color(color.value)
    }
    
    static func color(_ color: ThemeColors) -> UIColor {
        UIColor(named: color.value) ?? .clear
    }
    
    static func color(_ color: ThemeColors) -> CGColor? {
        Color(color.value).cgColor
    }
}

// MARK: -  Theme Factory Images

extension ThemeFactory: ThemeFactoryImages {
    static func image(_ image: ThemeImages) -> Image {
        Image(image.value).resizable()
    }
    
    static func image(_ image: ThemeImages) -> UIImage {
        UIImage(named: image.value) ?? .placeholder
    }
}

// MARK: -  Theme Factory Icons

extension ThemeFactory: ThemeFactoryIcons {
    static func icon(_ image: ThemeIcons) -> Image {
        Image(image.value)
    }
    
    static func icon(_ image: ThemeIcons) -> UIImage {
        UIImage(named: image.value) ?? .placeholder
    }
}
