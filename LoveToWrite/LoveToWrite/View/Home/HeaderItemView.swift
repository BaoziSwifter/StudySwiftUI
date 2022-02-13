//
//  HeaderItemView.swift
//  LoveToWrite
//
//  Created by dlf on 2022/2/13.
//

import SwiftUI

struct HeaderItemView: View {
    // MARK: - Properites
    let header: Header
    
    // MARK: - Body
    var body: some View {
        Image(header.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct HeaderItemView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderItemView(header: headers[1])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
