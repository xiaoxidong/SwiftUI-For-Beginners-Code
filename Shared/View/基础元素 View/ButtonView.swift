//
//  ButtonView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/9.
//

import SwiftUI

// 1. 使用文字创建
//struct ButtonView: View {
//    var body: some View {
//        Button("点击按钮") {
//            print("按钮被点击了！")
//        }
//    }
//}

// 2. 使用本地化的文字
/*
struct ButtonView: View {
    var body: some View {
        Button(LocalizedStringKey("点击按钮")) {
            print("按钮被点击了！")
        }
    }
}
*/

// 3. 使用 View 创建
/*
struct ButtonView: View {
    var body: some View {
        Button {
            print("按钮被点击了！")
        } label: {
            Image("slack")
        }
    }
}
*/

// 4. 使用按钮角色创建
struct ButtonView: View {
    var body: some View {
        if #available(iOS 15.0, macOS 12.0, *) {
            Button(role: .destructive) {
                print("按钮被点击了！")
            } label: {
                Text("点击按钮")
            }
        } else {
            Text("role 需要在 iOS 15.0, macOS 12.0 上使用。")
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
