//
//  VegetableCardView.swift
//  Vegetables
//
//  Created by dlf on 2022/1/16.
//

import SwiftUI

struct VegetableCardView: View {
    // MARK: - Properties
    var vegetable: Vegetable
    
    @State private var isAnimation = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // Vegetable: Image
                Image(vegetable.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimation ? 1.0 : 0.6)
                
                // Vegetable: Title
                Text(vegetable.title).foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                // Vegetable: Headline
                Text(vegetable.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // Button: Start
                StartButtonView()
            } //: VStack
        } //: ZStack
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimation = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: vegetable.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

struct VegetableCardView_Previews: PreviewProvider {
    static var previews: some View {
        VegetableCardView(vegetable: vegetablesData[0])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
