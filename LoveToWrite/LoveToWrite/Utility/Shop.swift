//
//  Shop.swift
//  LoveToWrite
//
//  Created by dlf on 2022/2/13.
//

import Foundation


class Shop: ObservableObject {
    @Published var showingPen: Bool = false
    @Published var selectedPen: Pen? = nil
}
