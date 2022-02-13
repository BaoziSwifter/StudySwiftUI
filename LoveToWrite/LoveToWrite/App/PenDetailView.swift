//
//  PenDetailView.swift
//  LoveToWrite
//
//  Created by dlf on 2022/2/13.
//

import SwiftUI

struct PenDetailView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            // 导航栏
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            // Header
            HeaderDetailView()
                .padding(.horizontal)
            
            // Top Part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // Bottom
            VStack(alignment: .center, spacing: 0, content: {
                // 评论 笔尖规格
                RatingsSizesDetailView()
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                // 描述
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedPen?.description ?? samplePen.description)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })
                
                // 数量和设定为最爱
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                // 购物车
                AddTocartDetailView()
                    .padding(.bottom, 20)
            }).padding(.horizontal)
            .background(
                Color.white.clipShape(CustomShape()).padding(.top, -105)
            ).zIndex(0)
            
            
            Spacer()
        })
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: shop.selectedPen?.red ?? samplePen.red,
                green: shop.selectedPen?.green ?? samplePen.green,
                blue: shop.selectedPen?.blue ?? samplePen.blue).ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct PenDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PenDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
            .environmentObject(Shop())
    }
}
