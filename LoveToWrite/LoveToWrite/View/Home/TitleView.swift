//
//  TitleView.swift
//  LoveToWrite
//
//  Created by dlf on 2022/2/13.
//

import SwiftUI

struct TitleView: View {
    // MARK: - Properites
    let title: String
    
    // MARK: - Body
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "钢 笔")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
