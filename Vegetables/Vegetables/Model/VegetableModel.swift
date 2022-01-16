//
//  VegetableModel.swift
//  Vegetables
//
//  Created by dlf on 2022/1/16.
//

import SwiftUI

struct Vegetable: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var classification: [String]
}
