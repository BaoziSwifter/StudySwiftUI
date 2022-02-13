//
//  NavigationBarView.swift
//  LoveToWrite
//
//  Created by dlf on 2022/2/13.
//

import SwiftUI

struct NavigationBarView: View {
    @State private var isAnimation: Bool = false

    var body: some View {
        HStack {
            Button(action: {
                
                
            }, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            })
            
            Spacer()
            LogoView().opacity(isAnimation ? 1 : 0)
                .offset(x: 0, y: isAnimation ? 0 : -25)
                .onAppear() {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimation.toggle()
                    }
                }
            Spacer()
            
            Button(action: {
                
            }, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            })
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
