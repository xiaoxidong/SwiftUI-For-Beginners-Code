//
//  ProgressViewView.swift
//  SwiftUI For Designers
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

// 1. 使用进度和最大值初始化
struct ProgressViewView: View {
    @State var value: Double = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        ProgressView("当前下载：\(Int(value))/10", value: value, total: 10)
            .onReceive(timer, perform: { _ in
                value += 1
                if value > 10 {
                    value = 1
                }
            })
    }
}

// 2. 使用 View 作为标题初始化
/*
struct ProgressViewView: View {
    @State var value: Double = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        ProgressView(value: value, total: 10, label: {
            HStack {
                Image(systemName: "hare")
                Text("当前下载：\(Int(value))/10")
            }
        }).onReceive(timer, perform: { _ in
            value += 1
            if value > 10 {
                value = 1
            }
        })
    }
}
*/

// 3. 显示当前进度标题样式初始化
/*
struct ProgressViewView: View {
    @State var value: Double = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        ProgressView(value: value, total: 10, label: {
            Text("\(String(format: "%.2f", value / 10 * 100))%")
        }, currentValueLabel: {
            HStack {
                Image(systemName: "hare")
                Text("当前下载：\(Int(value))/10")
            }
        }).onReceive(timer, perform: { _ in
            value += 1
            if value > 10 {
                value = 1
            }
        })
    }
}
*/

// 4. 加载中样式初始化
/*
struct ProgressViewView: View {
    var body: some View {
        ProgressView()
    }
}
*/

// 5. 使用文字或者本地化的文字初始化
/*
struct ProgressViewView: View {
    var body: some View {
        ProgressView("加载中...")
    }
}
*/

// 6. 使用 View 作为标题，加载中样式初始化
/*
struct ProgressViewView: View {
    var body: some View {
        ProgressView {
            HStack {
                Image(systemName: "tortoise")
                Text("加载中...")
            }
        }
    }
}
 */

struct ProgressViewView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressViewView()
    }
}
