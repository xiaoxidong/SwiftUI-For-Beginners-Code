//
//  NavigationLinkView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/18.
//

import SwiftUI

// 1. 以 View 初始化
struct NavigationLinkView: View {
    var body: some View {
        NavigationView {
            NavigationLink {
                Text("新的页面")
            } label: {
                HStack {
                    Image(systemName: "scribble")
                    Text("打开新页面")
                }.navigationTitle("Home")
            }

        }
    }
}

// 2. 以文字初始化
/*
struct NavigationLinkView: View {
    var body: some View {
        NavigationView {
            NavigationLink("打开新页面") {
                Text("新的页面")
            }
        }
    }
}
*/

// 3. 使用一个 Bool 值控制加载新页面
/*
struct NavigationLinkView: View {
    @State var push: Bool = false
    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                NavigationLink("打开新页面", isActive: $push) {
                    Text("新的页面")
                }
                Button {
                    push = true
                } label: {
                    Label("按钮点击打开", systemImage: "book.circle.fill")
                }
            }.navigationTitle("Home")
        }
    }
}
*/

// 4. 使用 Tag 初始化
/*
struct NavigationLinkView: View {
    @State var selection: Int? = nil
    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                NavigationLink("打开第一个新页面", tag: 1, selection: $selection) {
                    Text("第一个新的页面")
                }
                NavigationLink("打开第二个新页面", tag: 2, selection: $selection) {
                    Text("第二个新的页面")
                }
                Button {
                    selection = 2
                } label: {
                    Label("按钮点击打开", systemImage: "book.circle.fill")
                }
            }.navigationTitle("Home")
        }
    }
}
*/


// 5. 使用一个 Bool 值点击 A View 加载 B View
/*
struct NavigationLinkView: View {
    @State var push = false
    var body: some View {
        NavigationView {
            NavigationLink(isActive: $push) {
                Text("新的页面")
            } label: {
                HStack {
                    Image(systemName: "scribble")
                    Text("打开新页面")
                }
            }.navigationTitle("Home")
        }
    }
}
*/

// 6. 使用 Tag 来控制打开的页面
/*
struct NavigationLinkView: View {
    @State var selection: Int? = nil
    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                NavigationLink(tag: 1, selection: $selection) {
                    Text("打开第一个新页面")
                } label: {
                    Text("第一个新的页面")
                }
                NavigationLink(tag: 2, selection: $selection) {
                    Text("打开第二个新页面")
                } label: {
                    Text("第二个新的页面")
                }
                
                Button {
                    selection = 2
                } label: {
                    Label("按钮点击打开", systemImage: "book.circle.fill")
                }
            }.navigationTitle("Home")
        }
    }
}
*/

struct NavigationLinkView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkView()
    }
}
