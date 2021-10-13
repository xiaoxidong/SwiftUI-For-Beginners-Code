//
//  ClippedView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/13.
//

import SwiftUI

struct ClippedView: View {
    var body: some View {
        Image("beijing")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            .clipped(antialiased: true)
    }
}

struct ClippedView_Previews: PreviewProvider {
    static var previews: some View {
        ClippedView()
    }
}
