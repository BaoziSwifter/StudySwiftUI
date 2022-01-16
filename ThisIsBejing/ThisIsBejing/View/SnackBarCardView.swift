//
//  SnackBarCardView.swift
//  ThisIsBejing
//
//  Created by dlf on 2022/1/15.
//

import SwiftUI

struct SnackBarCardView: View {
    let snackBar: SnackBar
    let hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    @State private var showModel = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0, content: {
            Image(snackBar.image)
                .resizable()
                .scaledToFit()
                .overlay( // 浮动视图 默认居中对齐
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(.title.weight(.light))
                                .foregroundColor(.white)
                                .imageScale(.small)
                                .shadow(color: .red, radius: 2, x: 0, y: 0)
                                .padding(.trailing, 20)
                                .padding(.top, 22)
                            Spacer()
                        }
                        
                    }
                )
            VStack(alignment: .leading, spacing: 12, content: {
                Text(snackBar.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorBrownMedium"))
                    .lineLimit(1)
                
                Text(snackBar.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                
                // Rating
                SnackBarRatingView(snackBar: snackBar)
                
                // Info
                SnackBarInfoView(snackBar: snackBar)
            }) //: VStack
            .padding()
            .padding(.bottom, 12)
        }) //: VStack
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0.0, y: 0.0)
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModel = true
        }.sheet(isPresented: $showModel) {
            SnackBarDetailView(snackBar: self.snackBar)
        }
    }
}

struct SnackBarCardView_Previews: PreviewProvider {
    static var previews: some View {
        SnackBarCardView(snackBar: snackBarsData[7])
            .previewLayout(.sizeThatFits)
    }
}
