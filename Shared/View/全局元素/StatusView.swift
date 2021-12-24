//
//  StatusView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/17.
//

import SwiftUI

// 动态修改
// Status().darkContent()，可以查看 Global 文件夹下 Status 文件里的定义方法
struct StatusView: View {
    @State var show = false
    var body: some View {
        VStack(spacing: 16) {
            Button {
                UIApplication.shared.setStatusBarStyle(.darkContent, animated: true)
            } label: {
                Text("Dark Content")
            }

            Button {
                UIApplication.shared.setStatusBarStyle(.lightContent, animated: true)
            } label: {
                Text("Light Content")
            }

            Button {
                if show {
                    UIApplication.shared.setStatusBarHidden(true, with: .fade)
                } else {
                    UIApplication.shared.setStatusBarHidden(false, with: .fade)
                }
                show.toggle()
            } label: {
                Text(show ? "隐藏状态栏" : "显示状态栏")
            }
        }.onAppear {
            UIApplication.shared.setStatusBarHidden(true, with: .fade)
        }
    }
}

// SwiftUI 隐藏状态栏
/*
struct StatusView: View {
    @State var show: Bool = true
    var body: some View {
        Button(show ? "显示状态栏" : "隐藏状态栏") {
            show.toggle()
        }.statusBar(hidden: show)
    }
}
*/

struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView()
    }
}
