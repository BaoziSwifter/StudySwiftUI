//
//  HeaderTabView.swift
//  LoveToWrite
//
//  Created by dlf on 2022/2/13.
//

import SwiftUI

struct HeaderTabView: View {
    var body: some View {
        TabView {
            ForEach(headers) { item in
                HeaderItemView(header: item)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct HeaderTabView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderTabView()
            .background(colorBackground)
    }
}
