//
//  ContentView.swift
//  LoveToWrite
//
//  Created by dlf on 2022/2/13.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    // MARK: - Body
    var body: some View {
        ZStack {
            if shop.showingPen == false && shop.selectedPen == nil {
                    VStack {
                        NavigationBarView()
                            .padding(.horizontal, 15)
                            .padding(.bottom)
                            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                            .background(Color.white)
                            .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                        
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack(spacing: 0) {
                                HeaderTabView()
                                    .padding(.vertical, 20)
                                    .frame(height: 300, alignment: .center)
                                CategoryGrideView()
                                TitleView(title: "钢 笔")
                                LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                    ForEach(pens) { item in
                                        PenItemView(pen: item)
                                            .onTapGesture {
                                                feedback.impactOccurred()
                                                withAnimation(.easeOut) {
                                                    shop.showingPen = true
                                                    shop.selectedPen = item
                                                }
                                            }
                                    }
                                })
                                .padding(15)
                                TitleView(title: "品 牌")
                                BrandGridView()
                                FooterView()
                                    .padding(.horizontal)
                            }
                        }
                    }
                    .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                PenDetailView()
            }
        }
        .ignoresSafeArea(.all, edges: .top)
    }
    
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Shop())
    }
}
