//
//  String+FirstUppercased.swift
//  HikingApp
//
//  Created by Steven Santeliz on 12/3/24.
//

import Foundation

extension String {
    func addFirstUppercased() -> String {
        guard let first = self.first else { return "" }
        var word = self
        word.removeFirst()
        word.insert(contentsOf: first.uppercased(), at: self.startIndex)
        return word
    }
}
