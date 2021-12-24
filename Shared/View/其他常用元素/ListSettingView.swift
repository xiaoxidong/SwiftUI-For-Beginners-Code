//
//  ListSettingView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/22.
//

import SwiftUI

// listRowBackground
struct ListSettingView: View {
    var colors: [Color] = [.green, .pink, .purple, .gray, .red]
    var body: some View {
        List(0..<10) { index in
            Label("第 \(index) 行", systemImage: "folder.fill")
                .listRowBackground(colors[index % colors.count])
        }
    }
}

// listRowInsets
/*
struct ListSettingView: View {
    var body: some View {
        List(0..<10) { index in
            Label("第 \(index) 行", systemImage: "folder.fill")
                .listRowInsets(EdgeInsets(top: 15, leading: 50, bottom: 0, trailing: 0))
        }
    }
}
*/

// listRowSeparator
/*
struct ListSettingView: View {
    var body: some View {
        #if os(iOS)
        if #available(iOS 15.0, *) {
            List(0..<10) { index in
                Label("第 \(index) 行", systemImage: "folder.fill")
                    .listRowSeparator(.hidden)
            }
        } else {
            AlertView(text: "listRowSeparator 仅仅在 iOS 15.0+ 上使用。")
        }
        #else
        Text("listRowSeparator 无法在 macOS 上使用。")
        #endif
    }
}
*/

// listRowSeparatorTint
/*
struct ListSettingView: View {
    var body: some View {
        #if os(iOS)
        if #available(iOS 15.0, *) {
            List(0..<10) { index in
                Label("第 \(index) 行", systemImage: "folder.fill")
                    .listRowSeparatorTint(Color.red)
            }
        } else {
            Text("listRowSeparator 仅仅在 iOS 15.0+ 上使用。")
        }
        #else
        Text("listRowSeparator 无法在 macOS 上使用。")
        #endif
    }
}
*/

// listSectionSeparator
/*
struct ListSettingView: View {
    var body: some View {
        #if os(iOS)
        if #available(iOS 15.0, *) {
            List {
                Section("第一模块") {
                    Text("第 1 行")
                    Text("第 2 行")
                }.listSectionSeparator(.hidden)
                Section("第二模块") {
                    Text("第 3 行")
                    Text("第 4 行")
                }.listSectionSeparator(.visible)
            }.listStyle(.grouped)
        } else {
            Text("listRowSeparator 仅仅在 iOS 15.0+ 上使用。")
        }
        #else
        Text("listRowSeparator 无法在 macOS 上使用。")
        #endif
    }
}
*/

// listSectionSeparatorTint
/*
struct ListSettingView: View {
    var body: some View {
        #if os(iOS)
        if #available(iOS 15.0, *) {
            List {
                Section("第一模块") {
                    Text("第 1 行")
                    Text("第 2 行")
                }.listSectionSeparatorTint(Color.purple)
                Section("第二模块") {
                    Text("第 3 行")
                    Text("第 4 行")
                }.listSectionSeparatorTint(Color.red)
            }.listStyle(.grouped)
        } else {
            Text("listSectionSeparatorTint 仅仅在 iOS 15.0+ 上使用。")
        }
        #else
        Text("listSectionSeparatorTint 无法在 macOS 上使用。")
        #endif
    }
}
*/

// listItemTint
/*
struct ListSettingView: View {
    var body: some View {
        #if os(iOS)
        if #available(iOS 15.0, *) {
            List {
                Label("设置", systemImage: "gear")
                    .listItemTint(Color.red)
                Label("新建文件", systemImage: "pencil.circle.fill")
                    .listItemTint(Color.yellow)
                Label("打开导航", systemImage: "paperplane.fill")
                    .listItemTint(Color.green)
            }
        } else {
            Text("listItemTint 仅仅在 iOS 15.0+ 上使用。")
        }
        #else
        Text("listItemTint 无法在 macOS 上使用。")
        #endif
    }
}
*/

struct ListSettingView_Previews: PreviewProvider {
    static var previews: some View {
        ListSettingView()
    }
}
