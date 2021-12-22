//
//  FruitModel.swift
//  Section6Fruits
//
//  Created by 김보석 on 2021/12/21.
//

import SwiftUI

// MARK: - Fruits data model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
