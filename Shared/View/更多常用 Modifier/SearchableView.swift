//
//  SearchableView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

// 1. 使用搜索文字，位置和搜索提示文字初始化
//@available(macOS 12.0, iOS 15.0, *)
//struct SearchableView: View {
//    @State var searchContent = ""
//
//    var body: some View {
//        NavigationView {
//            // iPad 上查看效果可以取消下面的注释
////            Text("搜索内容 \(searchContent)")
//            Text("搜索内容 \(searchContent)")
//                .searchable(text: $searchContent, placement: .sidebar, prompt: "搜索内容")
//                .navigationTitle("SwiftUI For Beginners")
//        }
//    }
//}

// 2. 使用搜索提示初始化
@available(macOS 12.0, iOS 15.0, *)
struct SearchableView: View {
    @State var names: [String] = ["Twitter", "Facebook", "Instagram", "SwiftUI For Beginners"]
    @State var searchContent = ""
    var body: some View {
        NavigationView {
            List {
                ForEach(searchResults, id: \.self) { name in
                    Text(name)
                }
            }
            .searchable(text: $searchContent)  {
                ForEach(names, id: \.self) { text in
                    Text("搜索 \(text) ？")
                        .searchCompletion(text)
                }
            }
            .navigationTitle("SwiftUI For Beginners")
        }
    }
    
    var searchResults: [String] {
        if searchContent.isEmpty {
            return names
        } else {
            return names.filter { $0.contains(searchContent) }
        }
    }
}


@available(macOS 12.0, iOS 15.0, *)
struct SearchableView_Previews: PreviewProvider {
    static var previews: some View {
        SearchableView()
    }
}
