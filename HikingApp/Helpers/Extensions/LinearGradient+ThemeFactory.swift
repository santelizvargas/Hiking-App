//
//  LinearGradient+ThemeFactory.swift
//  HikingApp
//
//  Created by Steven Santeliz on 12/3/24.
//

import SwiftUI

extension LinearGradient {
    init(themeColors: [ThemeColors], startPoint: UnitPoint, endPoint: UnitPoint) {
        self.init(
            colors: themeColors.map { ThemeFactory.color($0) },
            startPoint: startPoint,
            endPoint: endPoint
        )
    }
}
