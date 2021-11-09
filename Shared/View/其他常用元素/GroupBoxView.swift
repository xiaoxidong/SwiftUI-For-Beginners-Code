//
//  GroupBoxView.swift
//  SwiftUI For Designers
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

// 1. 不使用标题初始化
struct GroupBoxView: View {
    @State var name: String = ""
    @State var password: String = ""
    @State var login: Bool = true
    var body: some View {
        GroupBox {
            VStack {
                Text("用户名")
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("输入用户名", text: $name)
                    .padding(.bottom)
                Text("密码")
                    .frame(maxWidth: .infinity, alignment: .leading)
                SecureField("输入密码", text: $password)
                    .padding(.bottom)
                Toggle(isOn: $login, label: { Text("保持登录")})
            }
        }
    }
}

// 2. 使用标题样式初始化
/*
struct GroupBoxView: View {
    @State var name: String = ""
    @State var password: String = ""
    @State var login: Bool = true
    var body: some View {
        GroupBox {
            VStack {
                Text("用户名")
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("输入用户名", text: $name)
                    .padding(.bottom)
                Text("密码")
                    .frame(maxWidth: .infinity, alignment: .leading)
                SecureField("输入密码", text: $password)
                    .padding(.bottom)
                Toggle(isOn: $login, label: { Text("保持登录")})
            }
        } label: {
            Label("登录", systemImage: "pin.circle.fill")
        }
    }
}
*/

// 3. 使用文字作为标题初始化
/*
struct GroupBoxView: View {
    @State var name: String = ""
    @State var password: String = ""
    @State var login: Bool = true
    var body: some View {
        if #available(iOS 15.0, macOS 12.0, *) {
            GroupBox("登录") {
                VStack {
                    Text("用户名")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextField("输入用户名", text: $name)
                        .padding(.bottom)
                    Text("密码")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    SecureField("输入密码", text: $password)
                        .padding(.bottom)
                    Toggle(isOn: $login, label: { Text("保持登录")})
                }
            }
        } else {
            Text("系统不满足 iOS 15.0, macOS 12.0 要求。")
        }
    }
}
*/

struct GroupBoxView_Previews: PreviewProvider {
    static var previews: some View {
        GroupBoxView()
    }
}
