//
//  ScaleView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

// 1. 放大倍数和中点初始化
//struct ScaleView: View {
//    var body: some View {
//        VStack {
//            Image("beijing")
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .frame(width: 200, height: 200)
//                .clipped()
//                .scaleEffect(0.5, anchor: .center)
//            Rectangle()
//                .frame(height: 36)
//        }
//    }
//}

// 2. 单独设置 X 和 Y 轴的缩放初始化
struct ScaleView: View {
    var body: some View {
        Image("beijing")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 200, height: 200)
            .clipped()
            .scaleEffect(x: 0.5, y: 1, anchor: .center)
    }
}

struct ImageScaleView_Previews: PreviewProvider {
    static var previews: some View {
        ScaleView()
    }
}
