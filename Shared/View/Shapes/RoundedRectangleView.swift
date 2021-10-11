//
//  RoundedRectangleView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

// 1. 圆角大小初始化
struct RoundedRectangleView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 40)
    }
}

// 2. 圆角大小和样式初始化
/*
struct RoundedRectangleView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 40, style: .continuous)
    }
}
*/

// 3. 圆角 Size 初始化
/*
struct RoundedRectangleView: View {
    var body: some View {
        RoundedRectangle(cornerSize: CGSize(width: 60, height: 90))
    }
}
*/

// 4. 圆角 Size 和样式初始化
/*
struct RoundedRectangleView: View {
    var body: some View {
        RoundedRectangle(cornerSize: CGSize(width: 60, height: 90), style: .continuous)
    }
}
*/

struct RoundedRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedRectangleView()
    }
}
