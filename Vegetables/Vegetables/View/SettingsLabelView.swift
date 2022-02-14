//
//  SettingsLabelView.swift
//  Vegetables
//
//  Created by beliefduan on 2022/2/14.
//

import SwiftUI

struct SettingsLabelView: View {
    var labelText: String
    var labelImage: String
    
    
    var body: some View {
        HStack {
            Text(labelText)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "蔬菜百科", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
