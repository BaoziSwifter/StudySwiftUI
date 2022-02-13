//
//  LoveToWriteApp.swift
//  LoveToWrite
//
//  Created by dlf on 2022/2/13.
//

import SwiftUI

@main
struct LoveToWriteApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(Shop())
        }
    }
}
