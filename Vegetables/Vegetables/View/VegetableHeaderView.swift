//
//  VegetableHeaderView.swift
//  Vegetables
//
//  Created by dlf on 2022/2/13.
//

import SwiftUI

struct VegetableHeaderView: View {
    var vegetable: Vegetable
    @State private var isAnimationImage: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: vegetable.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(vegetable.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
        }
        .frame(height: 440)
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimationImage = true
            }
        })
    }
}

struct VegetableHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        VegetableHeaderView(vegetable: vegetablesData[2])
    }
}
