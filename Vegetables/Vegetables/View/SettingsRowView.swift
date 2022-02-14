//
//  SettingsRowView.swift
//  Vegetables
//
//  Created by beliefduan on 2022/2/14.
//

import SwiftUI

struct SettingsRowView: View {
    var name: String
    var content: String?
    var linkLabel: String?
    var linkDestination: String?
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if let c = content {
                    Text(c)
                } else if let ll = linkLabel, let ld = linkDestination {
                    Link(ll, destination: URL(string: ld)!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "开发人员", content: "sssss")
                .previewLayout(.fixed(width: 375, height: 60))
            .padding()
            SettingsRowView(name: "开发人员", linkLabel: "百度", linkDestination: "www.baidu.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
