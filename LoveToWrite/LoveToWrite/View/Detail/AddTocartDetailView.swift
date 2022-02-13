//
//  AddTocartDetailView.swift
//  LoveToWrite
//
//  Created by dlf on 2022/2/13.
//

import SwiftUI

struct AddTocartDetailView: View {
    var body: some View {
        Button(action: {}, label: {
            Spacer()
            Text("添加到购物车")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })
        .padding(15)
        .background(
            Color(red: samplePen.red, green: samplePen.green, blue: samplePen.blue)
        )
        .clipShape(Capsule())
        
    }
}

struct AddTocartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddTocartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
