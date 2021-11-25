//
//  HoverEffectView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

// 需要在支持鼠标的 iPad 上查看效果。
struct HoverEffectView: View {
    var body: some View {
        #if os(iOS)
        HStack(spacing: 16) {
            Circle()
                .frame(width: 80, height: 80)
                .foregroundColor(.yellow)
                .hoverEffect(.automatic)
            Circle()
                .frame(width: 80, height: 80)
                .foregroundColor(.pink)
                .hoverEffect(.highlight)
            Circle()
                .frame(width: 80, height: 80)
                .foregroundColor(.purple)
                .hoverEffect(.lift)
        }
        #else
        Text("hoverEffect 仅能在 iOS 上使用。")
        #endif
    }
}

struct HoverEffectView_Previews: PreviewProvider {
    static var previews: some View {
        HoverEffectView()
    }
}
