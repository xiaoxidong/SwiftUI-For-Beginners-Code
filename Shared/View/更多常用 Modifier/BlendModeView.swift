//
//  BlendModeView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

struct BlendModeView: View {
    var body: some View {
        ZStack {
            Image("beijing")
                .resizable()
                .aspectRatio(contentMode: .fill)
            Image("people")
                .blendMode(.lighten)
        }.frame(width: 300, height: 300)
            .clipped()
    }
}

struct BlendModeView_Previews: PreviewProvider {
    static var previews: some View {
        BlendModeView()
    }
}
