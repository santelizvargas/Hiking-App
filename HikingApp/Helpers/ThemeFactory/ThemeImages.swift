//
//  ThemeImage.swift
//  HikingApp
//
//  Created by Steven Santeliz on 12/3/24.
//

import Foundation

enum ThemeImages {
    case image1
    case image2
    case image3
    case image4
    case image5
    case placeholder
    
    var value: String {
        return switch self {
            case .image1: "image-1"
            case .image2: "image-2"
            case .image3: "image-3"
            case .image4: "image-4"
            case .image5: "image-5"
            case .placeholder: String(describing: self)
        }
    }
}
