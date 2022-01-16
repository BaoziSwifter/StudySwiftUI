//
//  SnackBarDetail.swift
//  ThisIsBejing
//
//  Created by dlf on 2022/1/15.
//

import SwiftUI

struct SnackBarDetailView: View {
    let snackBar: SnackBar
    @State private var pulsate = false
    
    // ＠Environment相当于调用系统的全局变量，一旦某个视图通过sheet修饰器被调出，相关信息就会被“打入”环境变量presentationMode里。通过＠Environment封装器我们可以在视图中获取到该变量的值，然后在用户单击按钮的时候，也就是需要关闭滑出视图的时候，调用其dismiss()方法，就可以将其关闭了。注意，这里必须使用wrappedValue，否则无法实现关闭功能
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack(alignment: .center, spacing: 0, content: {
                Image(snackBar.image)
                    .resizable()
                    .scaledToFit()
                Group {
                    // 标题
                    Text(snackBar.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorBrownAdaptive"))
                        .padding(.top, 10)
                    // 评星
                    SnackBarRatingView(snackBar: snackBar)
                    // 服务信息
                    SnackBarInfoView(snackBar: snackBar)
                    // 美食介绍
                    Text("美食介绍")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    VStack(alignment: .leading, spacing: 5, content: {
                        ForEach(snackBar.introduction, id: \.self) { item in
                            VStack(alignment: .leading, spacing: 5, content: {
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            })
                        }
                    })
                    // 制作方法
                    Text("制作方法")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    ForEach(snackBar.method, id: \.self) { item in
                        VStack(alignment: .center, spacing: 5, content: {
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42, alignment: .center)
                                .imageScale(.large)
                                .font(.title.weight(.ultraLight))
                                .foregroundColor(Color("ColorBrownAdaptive"))
                            
                            Text(item)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight: 100)
                        })
                    }
                } //: Group
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            })//: Stack
        }) //: ScrollView
        .edgesIgnoringSafeArea(.all)
        .overlay(
            HStack {
                Spacer()
                VStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                            .shadow(radius: 10)
                            .opacity(self.pulsate ? 1 : 0.6)
                            .scaleEffect(self.pulsate ? 1.2 : 0.8, anchor: .center)
                            .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                    })
                    .padding(.trailing, 20)
                    .padding(.top, 24)
                    Spacer()
                }
            }
        )
        .onAppear() {
            self.pulsate.toggle()
        }
    }
}

struct SnackBarDetail_Previews: PreviewProvider {
    static var previews: some View {
        SnackBarDetailView(snackBar: snackBarsData[0])
    }
}
