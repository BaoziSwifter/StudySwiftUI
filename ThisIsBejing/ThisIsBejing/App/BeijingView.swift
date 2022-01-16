//
//  BeijingView.swift
//  ThisIsBejing
//
//  Created by dlf on 2022/1/15.
//

import SwiftUI

struct BeijingView: View {
    @State private var pullStateAnimation = false
    
    
    var body: some View {
        VStack {
            Spacer()
            Image("Beijing-Logo")
                .resizable()
                .scaledToFit()
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                .scaleEffect(pullStateAnimation ? 1.0 : 0.9)
                .opacity(pullStateAnimation ? 1.0 : 0.9)
                .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
            
            VStack {
                Text("Beijing")
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundColor(.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                Text("北京，是一座朴实亲切而又大气磅礴的城市。既能海纳百川，又有自己的独特的疯子，既能独树一帜，又不孤赏自芳。")
                    .lineLimit(nil)
                    .font(.headline)
                    .foregroundColor(Color("ColorBrown"))
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, minHeight: 120)
            }
            .padding()
            Spacer()
        }
        .background(
            Image("Background")
                .resizable()
                .scaledToFill()
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            self.pullStateAnimation.toggle()
        }
    }
}

struct BeijingView_Previews: PreviewProvider {
    static var previews: some View {
        BeijingView()
            .preferredColorScheme(.light)
        BeijingView()
            .preferredColorScheme(.dark)
    }
}
