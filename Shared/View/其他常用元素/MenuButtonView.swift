//
//  MenuButtonView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/9.
//

import SwiftUI

// 1. 使用 View 作为标题初始化
//struct MenuButtonView: View {
//    @State var selected = ""
//    var body: some View {
//        Menu {
//            Button("星期一") { selected = "星期一" }
//            Button("星期二") { selected = "星期二" }
//            Button("星期三") { selected = "星期三" }
//            Button("星期四") { selected = "星期四" }
//            Button("星期五") { selected = "星期五" }
//
//            Menu("周末") {
//                Button("星期六") { selected = "星期六" }
//                Button("星期日") { selected = "星期日" }
//            }
//        } label: {
//            HStack {
//                Image(systemName: "calendar")
//                Text(selected == "" ? "选择日期" : selected)
//            }
//        }
//    }
//}


// 2. 直接使用字符串作为标题初始化
/*
struct MenuButtonView: View {
    @State var selected = ""
    var body: some View {
        Menu(selected == "" ? "选择日期" : selected) {
            Button("星期一") { selected = "星期一" }
            Button("星期二") { selected = "星期二" }
            Button("星期三") { selected = "星期三" }
            Button("星期四") { selected = "星期四" }
            Button("星期五") { selected = "星期五" }
            
            Menu("周末") {
                Button("星期六") { selected = "星期六" }
                Button("星期日") { selected = "星期日" }
            }
        }
    }
}
 */


// 3. 添加点击默认事件初始化
/*
struct MenuButtonView: View {
    @State var selected = ""
    var body: some View {
        if #available(iOS 15.0, macOS 15.0, *) {
            Menu(selected == "" ? "选择日期" : selected) {
                Button("星期一") { selected = "星期一" }
                Button("星期二") { selected = "星期二" }
                Button("星期三") { selected = "星期三" }
                Button("星期四") { selected = "星期四" }
                Button("星期五") { selected = "星期五" }
                
                Menu("周末") {
                    Button("星期六") { selected = "星期六" }
                    Button("星期日") { selected = "星期日" }
                }
            } primaryAction: {
                selected = "星期一"
            }
        } else {
            Text("系统不满足 iOS 15.0, macOS 15.0 的要求。")
        }
    }
}
*/
// 4. 设置样式 menuStyle
struct MenuButtonView: View {
    @State var selected = ""
    var body: some View {
        Menu(selected == "" ? "选择日期" : selected) {
            Button("星期一") { selected = "星期一" }
            Button("星期二") { selected = "星期二" }
            Button("星期三") { selected = "星期三" }
            Button("星期四") { selected = "星期四" }
            Button("星期五") { selected = "星期五" }
            
            Menu("周末") {
                Button("星期六") { selected = "星期六" }
                Button("星期日") { selected = "星期日" }
            }
        }.menuStyle(BorderlessButtonMenuStyle())
    }
}


struct MenuButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MenuButtonView()
    }
}
