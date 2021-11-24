//
//  ZIndexView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

struct ZIndexView: View {
    var body: some View {
        VStack(spacing: -50) {
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.pink)
                .zIndex(1)
            Rectangle()
                .frame(width: 100, height: 100)
                .padding(.leading, 50)
                .foregroundColor(Color.purple)
                .zIndex(0)
        }
    }
}

struct ZIndexView_Previews: PreviewProvider {
    static var previews: some View {
        ZIndexView()
    }
}
