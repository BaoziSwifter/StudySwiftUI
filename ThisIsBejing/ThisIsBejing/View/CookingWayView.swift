//
//  CookingWayView.swift
//  ThisIsBejing
//
//  Created by dlf on 2022/1/15.
//

import SwiftUI

struct CookingWayView: View {
    var body: some View {
        HStack {
            // 第一列
            VStack(alignment: .leading, spacing: 4, content: {
                HStack() {
                    Image("蒸-Icon")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("蒸")
                } //: HStack
                Divider()
                HStack() {
                    Image("煎-Icon")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("煎")
                } //: HStack
                Divider()
                HStack() {
                    Image("烙-Icon")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("烙")
                } //: HStack
                Divider()
                HStack() {
                    Image("爆-Icon")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("爆")
                } //: HStack
            }) //: VStack
            
            // 第二列
            VStack(alignment: .center, spacing: 16, content: {
                HStack {
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .font(.title.weight(.ultraLight))
                    .imageScale(.large)
                HStack {
                    Divider()
                }
            })
            
            
            // 第三列
            VStack(alignment: .leading, spacing: 4, content: {
                HStack {
                    Text("烤")
                    Spacer()
                    Image("烤-Icon")
                        .resizable()
                        .modifier(IconModifier())
                } //: HStack
                Divider()
                HStack {
                    Text("涮")
                    Spacer()
                    Image("涮-Icon")
                        .resizable()
                        .modifier(IconModifier())
                } //: HStack
                Divider()
                HStack {
                    Text("冲")
                    Spacer()
                    Image("冲-Icon")
                        .resizable()
                        .modifier(IconModifier())
                } //: HStack
                Divider()
                HStack {
                    Text("煨")
                    Spacer()
                    Image("煨-Icon")
                        .resizable()
                        .modifier(IconModifier())
                } //: HStack
            }) //: VStack
        } //: HStack
        .font(.callout)
        .foregroundColor(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.frame(width: 42, height: 42, alignment: .center)
    }
}

struct CookingWayView_Previews: PreviewProvider {
    static var previews: some View {
        CookingWayView()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}
