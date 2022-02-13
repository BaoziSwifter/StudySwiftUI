//
//  StartButtonView.swift
//  Vegetables
//
//  Created by dlf on 2022/1/16.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage("isOnBoarding") var isOnBoarding: Bool?
    
    
    var body: some View {
        Button(action: {
            isOnBoarding = false
        }, label: {
            HStack(spacing: 8) {
                Text("开始")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().stroke(Color.white, lineWidth: 1.25))
        })
        .accentColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
        
    }
}
