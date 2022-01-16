//
//  SnackBarModel.swift
//  ThisIsBejing
//
//  Created by dlf on 2022/1/15.
//

import SwiftUI

struct SnackBar: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var hot: Int
    var introduction: [String]
    var method: [String]
}
