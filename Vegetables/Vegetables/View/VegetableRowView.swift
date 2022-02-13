//
//  VegetableRowView.swift
//  Vegetables
//
//  Created by dlf on 2022/2/13.
//

import SwiftUI

struct VegetableRowView: View {
    var vegetable: Vegetable
    
    var body: some View {
        HStack {
            Image(vegetable.image)
                .renderingMode(.original)
                //.renderingMode(.template) // 值得注意的是Image的第一个修饰器renderingMode，它用于设置图片的绘制模式。original参数代表原始模式，即在屏幕上绘制出来的图像是按照图片的像素原样显示。如果将参数设置为template，
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: vegetable.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5, content: {
                Text(vegetable.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(vegetable.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)// 在SwiftUI中，有两种特别的颜色——Color.primary和Color.secondary。Color.primary是SwiftUI中文本的默认颜色，根据用户设备运行的浅色/深色模式不同，颜色为黑色或者白色。而Color.secondary也是根据设备的不同，颜色可以为黑色或者白色，但它具有一定的透明度
            })
        }
    }
}

struct VegetableRowView_Previews: PreviewProvider {
    static var previews: some View {
        VegetableRowView(vegetable: vegetablesData[0])
            .previewLayout(.sizeThatFits) // previewLayout修改器用于修改预览方式，因为该结构体负责的是单独的行视图，完全没有必要将视图效果呈现在整个屏幕上，所以使用.sizeThatFits参数，指定Xcode产生一个适合当前视图的预览画面。
            .padding() // padding修饰器则会让视图的内容与容器四边有一个标准的间隔距离
    }
}
