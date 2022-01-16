//
//  SettingsView.swift
//  ThisIsBejing
//
//  Created by dlf on 2022/1/15.
//

import SwiftUI

struct SettingsView: View {
    @State private var enableNotification = true
    @State private var backgroundRefresh = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0, content: {
            // Header
            VStack(alignment: .center, spacing: 5, content: {
                Image("Beijing-Logo")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0.0, y: 4)
                
                Text("这里是北京")
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundColor(Color("ColorBrownAdaptive"))
            })
            .padding()
            
            // Form
            Form {
                // MARK: - 第一部分
                Section(header: Text("通用设置")) {
                    Toggle(isOn: $enableNotification, label: {
                        Text("启用通知消息")
                    })
                    Toggle(isOn: $backgroundRefresh, label: {
                        Text("刷新背景")
                    })
                } //: Section
                
                // MARK: - 第二部分
                Section(header: Text("应用设置")) {
                    if enableNotification {
                        HStack {
                            Text("开发者").foregroundColor(.gray)
                            Spacer()
                            Text("KKK / Good")
                        }
                        HStack {
                            Text("设计者").foregroundColor(.gray)
                            Spacer()
                            Text("JJJJ / Good")
                        }
                        HStack {
                            Text("兼容性").foregroundColor(.gray)
                            Spacer()
                            Text("iOS 15")
                        }
                        HStack {
                            Text("SwiftUI").foregroundColor(.gray)
                            Spacer()
                            Text("2.0")
                        }
                        HStack {
                            Text("版本").foregroundColor(.gray)
                            Spacer()
                            Text("1.2.0")
                        }
                    } else {
                        HStack {
                            Text("私人信息").foregroundColor(.gray)
                            Spacer()
                            Text("Good good study, day day up!")
                        }
                    }
                }
            } //: Form
            
        })
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
