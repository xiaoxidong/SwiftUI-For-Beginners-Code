//
//  AlertView.swift
//  SwiftUI For Designers
//
//  Created by XiaoDong Yuan on 2021/11/3.
//

import SwiftUI

// 1. 使用 Alert 作为内容初始化
// 一个按钮
//struct AlertView: View {
//    @State var show = false
//    var body: some View {
//        Button("Show Alert") {
//            show.toggle()
//        }.alert(isPresented: $show) {
//            Alert(title: Text("已经添加"), message: Text("已经处理完所有好友请求"), dismissButton: Alert.Button.default(Text("确定")) {
//
//            })
//        }
//
//    }
//}

// 两个按钮
/*
struct AlertView: View {
    @State var show = false
    var body: some View {
        Button("Show Alert") {
            show.toggle()
        }.alert(isPresented: $show) {
            Alert(title: Text("确认删除吗？"), message: Text("删除之后将无法恢复，确认删除？"), primaryButton: Alert.Button.cancel(), secondaryButton: Alert.Button.destructive(Text("删除"), action: {
                
            }))
        }
    }
}
*/

// 3. 使用字符串作为标题初始化
/*
 // 一个文字标题样式
struct AlertView: View {
    @State var show = false
    var body: some View {
        if #available(iOS 15.0, macOS 12.0, *) {
            Button("Show Alert") {
                show.toggle()
            }.alert("确认删除吗？", isPresented: $show) {
                Button("取消") {

                }
                Button("确认") {

                }
            }
        } else {
            Text("不满足系统的 iOS 15.0, macOS 12.0 要求。")
        }
    }
}
*/

// 两个文字标题样式
struct AlertView: View {
    @State var show = false
    var body: some View {
        if #available(iOS 15.0, macOS 12.0, *) {
            Button("Show Alert") {
                show.toggle()
            }.alert("确认删除吗？", isPresented: $show) {
                Button("取消", role: .cancel) {

                }
                Button("确认", role: .destructive) {

                }
            } message: {
                Text("删除之后将无法恢复！")
            }

        } else {
            Text("不满足系统的 iOS 15.0, macOS 12.0 要求。")
        }
    }
}

// 4. 使用 Text 作为标题初始化
/*
struct AlertView: View {
    @State var show = false
    var body: some View {
        if #available(iOS 15.0, macOS 12.0, *) {
            Button("Show Alert") {
                show.toggle()
            }.alert(Text("确认删除吗？"), isPresented: $show) {
                Button("取消") {
                    
                }
                Button("确认") {
                    
                }
            }
        } else {
            Text("不满足系统的 iOS 15.0, macOS 12.0 要求。")
        }
    }
}
*/

// 5. 给 Alert 传递数据初始化
/*
struct AlertView: View {
    @State var show = false
    var body: some View {
        if #available(iOS 15.0, macOS 12.0, *) {
            Button("Show Alert") {
                show.toggle()
            }.alert("确认删除吗？", isPresented: $show, presenting: "Name") { text in
                Button("取消") {
                    print(text)
                }
                Button("确认") {
                    
                }
            }
        } else {
            Text("不满足系统的 iOS 15.0, macOS 12.0 要求。")
        }
    }
}
*/

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
