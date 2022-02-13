//
//  VegetableClassificationView.swift
//  Vegetables
//
//  Created by dlf on 2022/2/13.
//

import SwiftUI

struct VegetableClassificationView: View {
    var vegetable: Vegetable
    let classification: [String] = ["门","纲","亚纲","目","科","属","族","种","分布区域"]
    var body: some View {
        DisclosureGroup("蔬菜分类") {
            ForEach(0 ..< classification.count, id:\.self) { item in
                Divider().padding(.vertical, 2)
                HStack {
                    HStack {
                        Image(systemName: "info.circle")
                        Text(classification[item])
                    }
                    .foregroundColor(vegetable.gradientColors[1])
                    .font(.system(.body).bold())
                    Spacer(minLength: 65)
                    Text(vegetable.classification[item])
                        .multilineTextAlignment(.trailing)
                }
            }
        }
        
    }
}

struct VegetableClassificationView_Previews: PreviewProvider {
    static var previews: some View {
        VegetableClassificationView(vegetable: vegetablesData[1])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 490))
            .padding()
    }
}
