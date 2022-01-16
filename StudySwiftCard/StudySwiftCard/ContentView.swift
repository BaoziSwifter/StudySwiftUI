//
//  ContentView.swift
//  StudySwiftCard
//
//  Created by dlf on 2022/1/15.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    let cards = cardData
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack(alignment: .center, spacing: 20, content: {
                ForEach(cards) { i in
                    CardView(card: i)
                }
            }).padding(20)
        })
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .previewDevice("iPad Pro (9.7-inch)")
//            .previewLayout(PreviewLayout.sizeThatFits) // 代表预览窗口的尺寸和实际呈现视图的尺寸一致，既布局的界面多大，预览窗口的尺寸就有多大，和设备无关
    }
}
