//
//  LineLimitView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/13.
//

import SwiftUI

struct LineLimitView: View {
    var body: some View {
        Text("这是一款教你从 0 开始学习 Apple 全平台 UI 开发框架的应用，共计 156 个章节，从基础的 Xcode 使用，到基础数据结构知识，到应用的设计模式，到应用常用组件的使用都有讲解，包含了开发 iOS 和 Mac 应用的每一个环节，跟着整体的课程轻松学会 SwiftUI，每个人都可以开发全平台的 Apple 应用。")
            .font(.system(size: 15, weight: .medium))
            .lineLimit(4)
    }
}

// 查看全部文字
/*
struct LineLimitView: View {
    @State var showAll = false
    var body: some View {
        VStack(spacing: 16) {
            Button {
                showAll.toggle()
            } label: {
                Text(showAll ? "收起" : "查看全部")
                    .font(.title3)
            }

            Text("这是一款教你从 0 开始学习 Apple 全平台 UI 开发框架的应用，共计 156 个章节，从基础的 Xcode 使用，到基础数据结构知识，到应用的设计模式，到应用常用组件的使用都有讲解，包含了开发 iOS 和 Mac 应用的每一个环节，跟着整体的课程轻松学会 SwiftUI，每个人都可以开发全平台的 Apple 应用。")
                .font(.system(size: 15, weight: .medium))
                .lineLimit(showAll ? nil : 3)
        }.padding()
    }
}
*/


struct LineLimitView_Previews: PreviewProvider {
    static var previews: some View {
        LineLimitView()
    }
}
