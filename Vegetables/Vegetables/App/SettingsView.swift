//
//  SettingsView.swift
//  Vegetables
//
//  Created by beliefduan on 2022/2/14.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    /// Environment是SwiftUI的特性之一，
    /// SwiftUI使用Environment来传递系统范围内的设置信息，
    /// 比如用户使用的是浅色模式还是深色模式，时区是什么等。
    /// 所有的这些系统信息都来自设备的Environment。
    /// 在当前的设置页面，我们需要通过Environment获取presentationMode对象，
    /// 然后利用它去关闭当前页面。
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    // MARK: - 第一部分
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "蔬菜百科", labelImage: "info.circle")) {
                                Divider().padding(.vertical, 4)
                                HStack(alignment: .center, spacing: 10) {
                                    Image("logo").resizable()
                                        .scaledToFit()
                                        .frame(width: 80, height: 80)
                                        .cornerRadius(9)
                                    Text("蔬菜是指可以做菜、烹饪成为食品的一类植物或者菌类，蔬菜是人们日常饮食中必不可少的食物之一。蔬菜可以提供人体所需的多种维生素和矿物质等营养物质。本App的目的就是让更多的人了解每种蔬菜的特性。").font(.footnote)
                                }
                            }
                    // MARK: - 第二部分
                    GroupBox(label: SettingsLabelView(labelText: "定制化", labelImage: "paintbrush")) {
                        Divider().padding(.vertical, 4)
                        Text("如果需要，那么你可以通过这个开关来重置引导页面。")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("引导页面已重置").fontWeight(.bold).foregroundColor(.secondary)
                            } else {
                                Text("重置引导页").fontWeight(.bold).foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    // MARK: - 第三部分
                    GroupBox(label: SettingsLabelView(labelText: "应用程序", labelImage: "apps.iphone")) {
                        SettingsRowView(name: "开发者", content: "Dlf Copyright")
                        SettingsRowView(name: "设计者", content: "Oscar")
                        SettingsRowView(name: "兼容性", content: "iOS 15")
                        SettingsRowView(name: "网站", linkLabel: "腾讯", linkDestination: "www.tencent.com")
                        SettingsRowView(name: "微博", linkLabel: "@马化腾", linkDestination: "mahuateng.com")
                        SettingsRowView(name: "SwiftUI", content: "1.1.1")
                        SettingsRowView(name: "版本", content: "1.3.2")
                    }
                    
                }
                .navigationBarTitle(Text("设置"), displayMode: .large)
                .navigationBarItems(
                    trailing: Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                    })
                )
                    .padding()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView().preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
