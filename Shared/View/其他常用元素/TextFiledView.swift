//
//  TextFiledView.swift
//  SwiftUI For Beginners
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

// 1. 使用文字和占位符文字初始化
struct TextFiledView: View {
    @State var text: String = ""
    var body: some View {
        TextField("请输入内容", text: $text) { changed in
            print(changed)
        } onCommit: {
            print("Commit")
        }
    }
}

// 2. 使用文字和占位符文字初始化（高版本系统）
/*
@available(iOS 15.0, macOS 12.0, *)
struct TextFiledView: View {
    @State var text: String = ""
    @State var canSubmit = true
    @FocusState var focused: Bool
    var body: some View {
        VStack(spacing: 16) {
            TextField("请输入内容", text: $text, prompt: Text("Home"))
                .submitScope(canSubmit)
                .focused($focused, equals: true)
                .onSubmit {
                    print("输入完成！")
                }
                .submitLabel(.done)
            Button("开始输入") {
                focused = true
            }
        }
    }
}
*/

// 占位符文字，输入的文字格式和可以为空的输入文字进行初始化
/*
struct TextFiledView: View {
    @State var text: Double? = nil
    var body: some View {
        if #available(iOS 15.0, macOS 12.0, *) {
            TextField("输入内容", value: $text, format: .percent, prompt: Text("输入内容"))
        } else {
            Text("系统暂时不满足 iOS 15.0, macOS 12.0 要求！")
        }
    }
}
*/
struct TextFiledView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, macOS 12.0, *) {
            TextFiledView()
        } else {
            Text("系统暂时不满足要求！")
        }
    }
}
