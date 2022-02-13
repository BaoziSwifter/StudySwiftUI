//
//  TopPartDetailView.swift
//  LoveToWrite
//
//  Created by dlf on 2022/2/13.
//

import SwiftUI

struct TopPartDetailView: View {
    // MARK: - Properties
    @State private var isAnimating: Bool = false
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            // 价格
            VStack(alignment: .leading, spacing: 6, content: {
                Text("单价")
                    .fontWeight(.semibold)
                Text(shop.selectedPen?.formatterPrice ?? samplePen.formatterPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })
            .offset(y: isAnimating ? -50: -75)
            Spacer()
            // 图片
            Image(shop.selectedPen?.image ?? samplePen.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0: -35)
        }).onAppear() {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        }
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
    }
}
