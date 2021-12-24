//
//  ColorView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

// 1.系统颜色
struct ColorView: View {
    var body: some View {
        Color.red
    }
}

// 2. accentColor
//struct ColorView: View {
//    var body: some View {
//        Color.accentColor
//    }
//}

// 3. 自定义颜色
/*
struct ColorView: View {
    var body: some View {
        Color("designred")
        Color.designred
    }
}

// 这个定义是在任何文件里都可以使用的，因此为里后续的查看和修改便捷，我们可以在 Global 文件夹里建一个 Color 的 extension 文件。
//extension Color {
//  static let light = Color("light")
//    static let designred = Color("designred")
//}
*/

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView()
    }
}
