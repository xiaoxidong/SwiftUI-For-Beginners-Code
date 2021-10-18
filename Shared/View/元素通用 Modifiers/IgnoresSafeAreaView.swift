//
//  IgnoresSafeAreaView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

// 1. edgesIgnoringSafeArea
struct IgnoresSafeAreaView: View {
    var body: some View {
        Color.red
            .edgesIgnoringSafeArea(.top)
    }
}

// 2. ignoresSafeArea
/*
struct IgnoresSafeAreaView: View {
    var body: some View {
        Color.red
            .ignoresSafeArea(.all, edges: .top)
    }
}
*/

// 3. SafeArea 大小
/*
let bottomSafeArea: CGFloat = UIApplication.shared.windows.first?.safeAreaInsets.bottom ?? 0

struct IgnoresSafeAreaView: View {
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .edgesIgnoringSafeArea(.all)
        // 尝试调换上下这两个 Modifier 查看展示效果的不一样，在学完这个章节所有内容之后思考下是为什么。
            .padding(.bottom, bottomSafeArea == 0 ? 16 : bottomSafeArea)
    }
}
*/

struct IgnoresSafeAreaView_Previews: PreviewProvider {
    static var previews: some View {
        IgnoresSafeAreaView()
    }
}
