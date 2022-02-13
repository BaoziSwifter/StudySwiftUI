//
//  CategoryModel.swift
//  LoveToWrite
//
//  Created by dlf on 2022/2/13.
//

import Foundation


struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    var image: String {
        return self.name
    }
}
