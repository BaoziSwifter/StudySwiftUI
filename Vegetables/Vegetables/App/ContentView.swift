//
//  ContentView.swift
//  Vegetables
//
//  Created by dlf on 2022/1/16.
//

import SwiftUI

struct ContentView: View {
    var vegetables: [Vegetable] = vegetablesData
    @State private var isShowingSettings: Bool = false
    
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
            .navigationTitle("蔬菜")
            .navigationBarItems(
                trailing: Button(action: {
                    isShowingSettings = true
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                }).sheet(isPresented: $isShowingSettings, content: { SettingsView()
                })
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
