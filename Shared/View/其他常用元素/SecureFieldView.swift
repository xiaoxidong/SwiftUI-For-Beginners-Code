//
//  SecureFieldView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/11/3.
//

import SwiftUI

// 1. 使用文字初始化
//struct SecureFieldView: View {
//    @State var text: String = ""
//    var body: some View {
//        SecureField("输入密码", text: $text) {
//            print("输入完成")
//        }
//    }
//}

// 2. 使用文字初始化（高版本）
/*
struct SecureFieldView: View {
    @State var text: String = ""
    var body: some View {
        if #available(iOS 15.0, macOS 12.0, *) {
            SecureField("输入密码", text: $text, prompt: Text("输入密码内容"))
        } else {
            Text("系统暂时不满足 iOS 15.0, macOS 12.0 要求！")
        }
    }
}
*/
// 4. 使用 Label 创建
struct SecureFieldView: View {
    @State var text: String = ""
    var body: some View {
        if #available(iOS 15.0, macOS 12.0, *) {
            Form {
                SecureField(text: $text, prompt: Text("输入密码")) {
                    Label("Setting", systemImage: "gear")
                }
            }
        } else {
            Text("系统暂时不满足 iOS 15.0, macOS 12.0 要求！")
        }
    }
}

struct SecureFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldView()
    }
}
