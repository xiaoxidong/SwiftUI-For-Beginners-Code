//
//  ColorSchemeView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

// 1. 获取当前的外观设置
//struct ColorSchemeView: View {
//    @Environment(\.colorScheme) var colorScheme
//    var body: some View {
//        if colorScheme == .dark {
//            Text("Dark Mode")
//        } else {
//            Text("Light Mode")
//        }
//    }
//}


// 2. 自定义外观设置
struct ColorSchemeView: View {
    var body: some View {
        HStack(spacing: 16) {
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.designred)
                .preferredColorScheme(.dark)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.designred)
                .colorScheme(.light)
        }
    }
}
struct ColorSchemeView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSchemeView()
    }
}
