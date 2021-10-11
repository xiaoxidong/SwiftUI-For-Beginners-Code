//
//  TapGestureView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

// 单击事件
// 需要在模拟器里运行才可以点击之后打印台有文字打印，右侧预览运行不可以
struct TapGestureView: View {
    var body: some View {
        Circle()
            .onTapGesture {
                print("这是单次点击事件！")
            }
    }
}

// 双击事件
/*
struct TapGestureView: View {
    var body: some View {
        Circle()
            .onTapGesture(count: 2) {
                print("这是两次点击事件！")
            }
    }
}
*/

struct TapGestureView_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureView()
    }
}
