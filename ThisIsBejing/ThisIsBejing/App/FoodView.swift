//
//  ContentView.swift
//  ThisIsBejing
//
//  Created by dlf on 2022/1/15.
//

import SwiftUI

struct FoodView: View {
    var body: some View {
        let foods = foodsData
        let headers = headersData
        let snackBars = snackBarsData
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                // MARK: - Header
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack(alignment: .top, spacing: 0, content: {
                        ForEach(headersData) {item in
                            HeaderView(header: item)
                        }
                    })
                })
                
                Text("小吃的烹饪方式")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                CookingWayView()
                    .frame(maxWidth: 640)

                Text("特色北京小吃")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack(alignment: .top, spacing: 60, content: {
                        ForEach(foods) { item in
                            FoodCardView(food: item)
                        }
                    })
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                })
                Text("特色小吃店")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                VStack(alignment: .center, spacing: 20, content: {
                    ForEach(snackBars) { item in
                        SnackBarCardView(snackBar: item)
                    }
                })
                .frame(maxWidth: 640)
                .padding(.horizontal)
                
                // MARK: - Footer
                VStack(alignment: .center, spacing: 20, content: {
                    Text("关于北京的小吃")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorBrownAdaptive"))
                        .padding(8)
                    Text("北京的小吃，历史悠久，技艺精湛，品种繁多。荟萃我国大江南北、长城内外的风味。愿《这里是北京》APP能拓宽你的视野，丰富你的生活！")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                        .frame(minHeight: 60)
                })
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorBrownAdaptive"))
            .padding(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FoodView()
        }
    }
}
