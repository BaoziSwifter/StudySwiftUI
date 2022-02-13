//
//  ContentView.swift
//  Vegetables
//
//  Created by dlf on 2022/1/16.
//

import SwiftUI

struct ContentView: View {
    var vegetables: [Vegetable] = vegetablesData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(vegetables) { item in
                    NavigationLink(
                        destination: VegetableDetailView(vegetable: item),
                        label: {
                            VegetableRowView(vegetable: item)
                                .padding(.vertical, 4)
                        })
                }
            }
        }.navigationTitle("蔬菜")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
