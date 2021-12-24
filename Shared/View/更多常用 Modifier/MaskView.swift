//
//  MaskView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

// 1. 使用 View 初始化
struct MaskView: View {
    var body: some View {
        Image("beijing")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 200)
            .mask(
                Text("北京")
                    .font(.system(size: 106, weight: .black))
            )
    }
}

// 2. 使用 View 和对齐方式初始化
/*
@available(iOS 15.0, macOS 12.0, *)
struct MaskView: View {
    var body: some View {
        Image("beijing")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 200)
            .mask(alignment: .topLeading) {
                Circle()
                    .frame(width: 150, height: 150)
            }
            .border(Color.yellow)
    }
}
*/

@available(iOS 15.0, macOS 12.0, *)
struct MaskView_Previews: PreviewProvider {
    static var previews: some View {
        MaskView()
    }
}
