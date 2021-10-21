//
//  TabViewStyleView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/19.
//

import SwiftUI

// PageTabViewStyle
struct TabViewStyleView: View {
    var body: some View {
        #if os(iOS)
        TabView {
            Color.designred
            Color.light
            Color.purple
            Color.pink
        }
        .foregroundColor(.white)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        #else
        Text("PageTabViewStyle(indexDisplayMode: .automatic) 无法在 Mac 上使用。")
        #endif
    }
}

// CarouselTabViewStyle，仅仅可以在 Apple Watch 上使用
/*
struct TabViewStyleView: View {
    var body: some View {
        TabView {
            Color.designred
            Color.light
            Color.purple
            Color.pink
        }
        .foregroundColor(.white)
        .tabViewStyle(CarouselTabViewStyle())
    }
}
*/


struct TabViewStyleView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewStyleView()
    }
}
