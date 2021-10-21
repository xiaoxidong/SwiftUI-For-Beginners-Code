//
//  SystemVersionView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/18.
//

import SwiftUI


// if 判断
struct SystemVersionView: View {
    var body: some View {
        if #available(iOS 15.0, macOS 12.0, *) {
            NavigationView {
                VStack {
                    Text("这是一个新的页面")
                    Text("这是一个新的页面")
                }
                Text("没有选择任何内容")
            }
        } else {
            // 低版本的系统处理
        }
    }
}

// @available
/*
@available(iOS 15.0, macOS 12.0, *)
struct SystemVersionView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("这是一个新的页面")
                Text("这是一个新的页面")
            }
            Text("没有选择任何内容")
        }
        .navigationViewStyle(.columns)
    }
}
*/

@available(iOS 15.0, macOS 12.0, *)
struct SystemVersionView_Previews: PreviewProvider {
    static var previews: some View {
        SystemVersionView()
    }
}
