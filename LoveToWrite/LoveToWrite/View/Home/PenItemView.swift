//
//  PenItemView.swift
//  LoveToWrite
//
//  Created by dlf on 2022/2/13.
//

import SwiftUI

struct PenItemView: View {
    // MARK: - Properites
    let pen: Pen
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            ZStack {
                Image(pen.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(
                Color(red: pen.red, green: pen.green, blue: pen.blue)
                    .cornerRadius(12)
            )
            
            Text(pen.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(pen.formatterPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        })
    }
}

struct PenItemView_Previews: PreviewProvider {
    static var previews: some View {
        PenItemView(pen: pens[1])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
