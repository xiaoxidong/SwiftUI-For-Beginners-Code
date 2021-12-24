//
//  PreviewContextView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/21.
//

import SwiftUI

struct PreviewContextView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

// 设置预览的类型，现阶段只支持一种 PreviewContext，就是 Widget 的大小样式。无法在我们的其他项目里使用，只能在 Widget 项目里查看，可以查看下面 SwiftUIForDesignersIOSWidget 里的 PreviewContextView 预览。
struct PreviewContextView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewContextView()
        
    }
}
