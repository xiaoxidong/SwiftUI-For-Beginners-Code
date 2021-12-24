//
//  LinkView.swift
//  SwiftUI For Beginners
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

// 1. 使用文字和链接初始化
//struct LinkView: View {
//    var body: some View {
//        Link("打开百度", destination: URL(string: "https://www.baidu.com/")!)
//    }
//}

// 3. 使用 View 和链接初始化
struct LinkView: View {
    var body: some View {
        Link(destination: URL(string: "https://www.baidu.com/")!) {
            HStack {
                Circle()
                    .frame(width: 26, height: 26)
                Text("打开百度")
            }.foregroundColor(Color.designred)
        }
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView()
    }
}
