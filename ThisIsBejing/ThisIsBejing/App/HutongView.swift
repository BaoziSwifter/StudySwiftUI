//
//  HutongView.swift
//  ThisIsBejing
//
//  Created by dlf on 2022/1/15.
//

import SwiftUI

struct HutongView: View {
    let hutongs = hutongsData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            VStack{
                Spacer()
                HStack(alignment: .center, spacing: 25, content: {
                    ForEach(hutongs) { item in
                        HutongRankingView(hutong: item)
                    }
                }).padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }).edgesIgnoringSafeArea(.all)
    }
}

struct HutongView_Previews: PreviewProvider {
    static var previews: some View {
        HutongView()
    }
}
