//
//  SectionView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/11/21.
//

import SwiftUI

// 1. 直接初始化
//struct SectionView: View {
//    var body: some View {
//        List {
//            Section {
//                Text("第一行内容")
//                Image("beijing")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//            }
//
//            Section {
//                Text("第三行内容")
//                Button("Save") { }
//            }
//        }
//    }
//}

// 2. 使用 Header 初始化
/*
struct SectionView: View {
    var body: some View {
        List {
            Section {
                Text("第一行内容")
                Image("beijing")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } header: {
                Text("第一个模块")
            }

            Section {
                Text("第三行内容")
                Button("Save") { }
            } header: {
                HStack {
                    Image(systemName: "gear")
                    Text("设置内容")
                }
            }
        }
    }
}
*/

// 3. 使用 Footer 初始化
/*
struct SectionView: View {
    var body: some View {
        List {
            Section {
                Text("第一行内容")
                Image("beijing")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } footer: {
                Text("第一个模块")
            }

            Section {
                Text("第三行内容")
                Button("Save") { }
            } footer: {
                HStack {
                    Image(systemName: "gear")
                    Text("设置内容")
                }
            }
        }
    }
}
*/

// 4. 使用 Header 和 Footer 初始化
/*
struct SectionView: View {
    var body: some View {
        List {
            Section {
                Text("第一行内容")
                Image("beijing")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } header: {
                Text("设置内容")
            } footer: {
                Label("打开系统设置", systemImage: "gear")
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
        }
    }
}
*/

// 5. 使用字符串作为标题初始化
/*
struct SectionView: View {
    var body: some View {
        List {
            if #available(iOS 15.0, macOS 12.0, *) {
                Section("设置内容") {
                    Text("第一行内容")
                    Image("beijing")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            } else {
                Text("使用字符串作为标题需要系统满足 iOS 15.0, macOS 12.0 或更高。")
            }
        }
    }
}
*/

// 6. collapsible
struct SectionView: View {
    var body: some View {
        #if os(macOS)
        NavigationView {
            List {
                Section {
                    Text("第一行内容")
                    Image("beijing")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                } header: {
                    Text("设置内容")
                }.collapsible(true)
            }.listStyle(.sidebar)
        }
        #else
        Text("collapsible 仅仅在 Mac 上使用。")
        #endif
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView()
    }
}
