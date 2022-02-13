//
//  VegetablesApp.swift
//  Vegetables
//
//  Created by dlf on 2022/1/16.
//

import SwiftUI

/// 如果我们为类（Class）、结构体（Struct）或枚举（Enum）添加了＠main关键字的标记，
/// 就意味着这个类（或结构体、枚举）必须符合App协议
/// 协议要求结构体中必须有一个body属性，用于定义应用程序的场景（Scene），
/// 因此该属性必须符合SwiftUI的Scene协议，body属性会返回Scene类型的实例


/// 将视图组合成复杂的用户界面，它就成为了场景（Scene）。
/// 场景可以将内容独立地呈现在平台上，我们也可以将几个场景组合成更复杂的场景

/// 在body属性里面有一个WindowGroup{}，它就是一个场景

/// 需要存储一个状态值，并且这个值必须是能够永久存储在iOS设备上的
/// 可以利用SwiftUI提供的全新属性封装器＠AppStorage来解决这个问题
/// 在SwiftUI应用程序中，封装器被大量用于视图的更新和状态的监测，它在SwiftUI中占有非常重要的位置，对数据的管理起到至关重要的作用

/// ＠AppStorage有什么作用呢？如果你之前有过Swift语言开发经验，就会清楚，如果想要将某个值永久存储在设备上，
/// 则需要借助UserDefaults类进行值的读取和写入。
/// 而在SwiftUI 2.0中，借助＠AppStorage属性封装器向iOS设备读取和写入指定的值。
/// 一旦AppStorage封装器的值发生更改，与其关联的SwiftUI视图就都会被重绘。
@main
struct VegetablesApp: App {
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnBoarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
