//
//  PenModel.swift
//  LoveToWrite
//
//  Created by dlf on 2022/2/13.
//

import Foundation

struct Pen: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    var red: Double { color[0] }
    var green: Double { color[1] }
    var blue: Double { color[2] }
    var formatterPrice: String { "¥\(price)" }
}
