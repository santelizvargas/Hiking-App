//
//  ThemeFactoryProtocols.swift
//  HikingApp
//
//  Created by Steven Santeliz on 12/3/24.
//

import SwiftUI

protocol ThemeFactoryColors {
    static func color(_ color: ThemeColors) -> Color
    static func color(_ color: ThemeColors) -> UIColor
    static func color(_ color: ThemeColors) -> CGColor?
}

protocol ThemeFactoryImages {
    static func image(_ image: ThemeImages) -> Image
    static func image(_ image: ThemeImages) -> UIImage
}

protocol ThemeFactoryIcons {
    static func icon(_ image: ThemeIcons) -> Image
    static func icon(_ image: ThemeIcons) -> UIImage
}
