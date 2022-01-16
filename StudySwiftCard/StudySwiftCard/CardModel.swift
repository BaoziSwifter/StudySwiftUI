//
//  Card.swift
//  StudySwiftCard
//
//  Created by dlf on 2022/1/15.
//

import SwiftUI

struct Card: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
    
}


