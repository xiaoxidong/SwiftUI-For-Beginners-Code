//
//  FrameView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

// 1. 固定大小初始化
struct FrameView: View {
    var body: some View {
        Ellipse()
            .frame(width: nil, height: 100)
//            .frame(height: 100)
//            .frame(width: 160, height: 100)
    }
}

// 2. 最大最小值初始化
/*
struct FrameView: View {
    var body: some View {
        Circle()
            .frame(maxWidth: .infinity, maxHeight: 100)
    }
}
*/

struct FrameView_Previews: PreviewProvider {
    static var previews: some View {
        FrameView()
    }
}
