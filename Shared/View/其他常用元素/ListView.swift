//
//  ListView.swift
//  SwiftUI For Designers
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

// 1. 使用 View 作为行内容
//struct ListView: View {
//    var body: some View {
//        List {
//            Text("第一行内容")
//            Image("beijing")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//            Text("第三行内容")
//            Button("Save") {
//
//            }
//        }
//    }
//}

// 2. 可以单独选中的行内容
/*
struct ListView: View {
    @State var selected: Int? = 0
    var body: some View {
        #if os(macOS)
        list
        #else
        NavigationView {
            list
            .navigationBarItems(trailing: EditButton())
        }.navigationViewStyle(StackNavigationViewStyle())
        #endif
    }
    
    var list: some View {
        List(selection: $selected) {
            Text("第一行内容").tag(0)
            Image("beijing")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .tag(1)
            Text("第三行内容").tag(2)
            Button("Save") {
                
            }.tag(3)
        }
        .navigationTitle("Home")
    }
}
*/

// 3. 可以多个选中的行内容
/*
struct ListView: View {
    @State var selected: Set<String> = []
    var body: some View {
        #if os(macOS)
        list
        #else
        NavigationView {
            list
            .navigationBarItems(trailing: EditButton())
        }.navigationViewStyle(StackNavigationViewStyle())
        #endif
    }
    
    var list: some View {
        List(selection: $selected) {
            Text("第一行内容").tag("A")
            Image("beijing")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .tag("B")
            Text("第三行内容").tag("C")
            Button("Save") {
                
            }.tag("D")
        }
        .navigationTitle("Home")
    }
}
*/


// 4. 使用 Identifiable 内容来创建行
/*
struct ListView: View {
    struct Item: Identifiable {
        var id = UUID()
        var image: String
        var text: String
    }
    var items: [Item] = [
        Item(image: "arrowshape.turn.up.right.circle.fill", text: "分享给好友"),
        Item(image: "pencil.circle.fill", text: "编辑内容"),
        Item(image: "trash.circle.fill", text: "删除内容"),
        Item(image: "folder.fill.badge.plus", text: "新建文件夹"),
        Item(image: "tray.fill", text: "归档内容")
    ]
    var body: some View {
        List(items) { item in
            HStack {
                Image(systemName: item.image)
                Text(item.text)
            }.font(.subheadline)
        }
    }
}
*/

// 5. 使用 Identifiable Binding 内容来创建行
/*
struct ListView: View {
    struct Item: Identifiable {
        var id = UUID()
        var image: String
        var text: String
    }
     @State var items: [Item] = [
        Item(image: "arrowshape.turn.up.right.circle.fill", text: "分享给好友"),
        Item(image: "pencil.circle.fill", text: "编辑内容"),
        Item(image: "trash.circle.fill", text: "删除内容"),
        Item(image: "folder.fill.badge.plus", text: "新建文件夹"),
        Item(image: "tray.fill", text: "归档内容")
    ]
    var body: some View {
        List($items) { $item in
            VStack {
                HStack {
                    Image(systemName: item.image)
                    Text("编辑内容")
                }.frame(maxWidth: .infinity, alignment: .leading)
                TextField("", text: $item.text)
            }.font(.subheadline).padding(12)
        }
    }
}
*/

// 7. 使用 Integer Range 区间来创建行
struct ListView: View {
    var body: some View {
        List(0..<20) { index in
            HStack {
                Circle().frame(width: 16)
                Text("第 \(index) 行")
            }.font(.subheadline)
        }
    }
}


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
