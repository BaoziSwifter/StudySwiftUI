//
//  CategoryGrideView.swift
//  LoveToWrite
//
//  Created by dlf on 2022/2/13.
//

import SwiftUI

struct CategoryGrideView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            })
            .frame(height: 140)
            .padding(.vertical, 10)
            .padding(.horizontal, 15)
        })
    }
}

struct CategoryGrideView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGrideView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
