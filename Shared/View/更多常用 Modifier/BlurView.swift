//
//  BlurBiew.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

struct BlurView: View {
    var body: some View {
        VStack {
            Image("beijing")
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                Circle()
                    .frame(width: 36, height: 36)
                    .foregroundColor(.yellow)
                Text("北京故宫")
                    .font(.title3)
            }
        }.blur(radius: 10, opaque: false)
    }
}

struct BlurView_Previews: PreviewProvider {
    static var previews: some View {
        BlurView()
    }
}
