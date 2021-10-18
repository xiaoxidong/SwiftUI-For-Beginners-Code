//
//  SheetView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/18.
//

import SwiftUI

// 1. 以 Bool 值来确定是否显示页面
struct SheetView: View {
    @State var show = false
    var body: some View {
        Button {
            show.toggle()
        } label: {
            Text("打开新页面")
        }
        .sheet(isPresented: $show) {
            // 如果我们设置了 Status Bar 的 View controller-based status bar appearance 为 No，则当 .sheet 加载的时候状态栏不会切换，需要我们在下个页面出现的时候设置下状态栏颜色，在这里页面关闭的时候设置下，当然如果觉得没影响可以忽略。
            print("新页面已经关闭")
        } content: {
            Color.designred
                .edgesIgnoringSafeArea(.all)
        }
    }
}

// 2. 以一个 Item 是否存在来确定显示页面
/*
struct SheetView: View {
    struct People: Identifiable {
        var id = UUID()
        var name: String
    }
    
    @State var people: People? = nil
    var body: some View {
        Button {
            people = People(name: "XiaoDong")
        } label: {
            Text(people?.name ?? "打开新页面")
        }
        .sheet(item: $people) {
            print("新页面已经关闭")
        } content: { _ in
            Text(people.name)
        }
    }
}
*/

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
