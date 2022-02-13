//
//  Constant.swift
//  LoveToWrite
//
//  Created by dlf on 2022/2/13.
//

import Foundation
import SwiftUI

// Data
let headers: [Header] = Bundle.main.decode("header.json")
let categories: [Category] = Bundle.main.decode("category.json")
let pens: [Pen] = Bundle.main.decode("pen.json")
let brands: [Brand] = Bundle.main.decode("brand.json")
let samplePen: Pen = pens[0]

// Color
let colorBackground = Color("ColorBackground")
let colorGray = Color(.systemGray4)

// Layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
// 计算属性定义为变量
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// UX
let feedback = UIImpactFeedbackGenerator(style: .medium)

// API

// Image

// Font

// String

// Misc
