//
//  ThemeColors.swift
//  HikingApp
//
//  Created by Steven Santeliz on 12/3/24.
//

import Foundation

enum ThemeColors {
    case colorGrayMedium
    case colorGrayLight
    case colorGreenDark
    case colorGreenLight
    case colorGreenMedium
    case colorIndigoMedium
    case colorOrangeMedium
    
    var value: String {
        String(describing: self).addFirstUppercased()
    }
}
