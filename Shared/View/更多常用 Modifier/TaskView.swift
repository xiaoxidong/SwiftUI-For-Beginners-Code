//
//  TaskView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

// 1. View 出现的时候
//@available(iOS 15.0, macOS 12.0, *)
//struct TaskView: View {
//    var body: some View {
//        Text("SwiftUI For Beginners")
//            .task(priority: .background) {
//                print("task 方法")
//            }
//            .onAppear {
//                print("onAppear 方法")
//            }
//    }
//}

// 2. View 出现和 id 变化的时候
@available(iOS 15.0, macOS 12.0, *)
struct TaskView: View {
    @State var doTask = true
    @State var change = true
    var body: some View {
        VStack(spacing: 16) {
            Text(change ? "SwiftUI For Beginners" : "开始学习")
                .task(id: doTask, priority: .background) {
                    change.toggle()
                }
            Button("doTask") {
                doTask.toggle()
            }
        }
    }
}


@available(iOS 15.0, macOS 12.0, *)
struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView()
    }
}
