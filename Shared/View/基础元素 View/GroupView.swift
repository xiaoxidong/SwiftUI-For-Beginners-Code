//
//  GroupView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/19.
//

import SwiftUI

// 不具有布局性
struct GroupView: View {
    var body: some View {
        #if os(iOS)
        VStack {
            content
        }
        #else
        HStack {
            content
        }
        #endif
    }
    var content: some View {
        Group {
            Text("第一个内容！")
            Text("第二个内容！")
        }
    }
}

// SwiftUI 最多支持 10 个子元素
/*
struct GroupView: View {
    var body: some View {
        VStack {
            Text("一个内容！")
            Text("一个内容！")
            Text("一个内容！")
            Text("一个内容！")
            Text("一个内容！")
            Text("一个内容！")
            Text("一个内容！")
            Text("一个内容！")
            Text("一个内容！")
            Group {
                Text("一个内容！")
                Text("一个内容！")
            }
        }
    }
}
*/

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}
