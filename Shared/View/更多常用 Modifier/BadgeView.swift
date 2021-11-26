//
//  BadgeView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

// 1.设置 Int 数字
//@available(iOS 15.0, macOS 12.0, *)
//struct BadgeView: View {
//    var body: some View {
//        List(0..<20) { index in
//            Text("第 \(index) 行")
//                .badge(index)
//        }
//    }
//}

// 2. 使用文字设置
@available(iOS 15.0, macOS 12.0, *)
struct BadgeView: View {
    var body: some View {
        TabView {
            Color.red
                .tabItem {
                    Label("Red", systemImage: "f.cursive.circle.fill")
                }
                .badge("+1")
            Color.yellow
                .tabItem {
                    Label("Yellow", systemImage: "info.circle.fill")
                }
                .badge(8)
            Color.purple
                .tabItem {
                    Label("Purple", systemImage: "questionmark.circle.fill")
                }
                .badge(Text("New"))
        }
    }
}

@available(iOS 15.0, macOS 12.0, *)
struct BadgeView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeView()
    }
}
