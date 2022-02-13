//
//  OnboardingView.swift
//  Vegetables
//
//  Created by dlf on 2022/2/13.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView {
            ForEach(vegetablesData) { item in
                VegetableCardView(vegetable: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
