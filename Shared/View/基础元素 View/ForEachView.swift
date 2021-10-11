//
//  ForEachView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

// 1. 一个不具有唯一标识的数据组
struct ForEachView: View {
    var words: [String] = ["首页", "搜索", "好友", "个人中心"]
    var body: some View {
        HStack {
            ForEach(words, id: \.self) { word in
                Text(word)
            }
        }
    }
}

// 2. 具有唯一标识的数据组
/*
struct ForEachView: View {
    var items: [Item] = [Item(name: "首页"), Item(name: "搜索"), Item(name: "好友"), Item(name: "个人中心")]
    
    struct Item: Identifiable {
        var id = UUID()
//        var id = "id"
        var name: String
    }
    
    var body: some View {
        HStack {
            ForEach(items) { item in
                Text(item.name)
            }
        }
    }
}
*/

// 3. 不具有唯一标识的自定义数据组
/*
struct ForEachView: View {
    var items: [Item] = [Item(name: "首页"), Item(name: "搜索"), Item(name: "好友"), Item(name: "个人中心")]
    
    struct Item {
        var name: String
    }
    
    var body: some View {
        HStack {
            ForEach(items, id: \.name) { item in
                Text(item.name)
            }
        }
    }
}
*/

// 4. 使用一个 Int 区间
/*
struct ForEachView: View {
    var body: some View {
        HStack {
            ForEach(1..<3) { index in
                Text("\(index)")
            }
        }
    }
}
*/

struct ForEachView_Previews: PreviewProvider {
    static var previews: some View {
        ForEachView()
    }
}
