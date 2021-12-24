//
//  DisclosureGroupView.swift
//  SwiftUI For Beginners
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

// 1. 使用一个 View 作为标题初始化
struct DisclosureGroupView: View {
    var body: some View {
        DisclosureGroup {
            Image("beijing")
                .resizable()
                .aspectRatio(contentMode: .fit)
        } label: {
            HStack {
                Circle().frame(width: 16, height: 16)
                Text("关于我们")
            }
        }.padding(.horizontal)
    }
}

// 2. 直接使用字符串作为标题初始化
/*
struct DisclosureGroupView: View {
    var body: some View {
        DisclosureGroup("关于我们", content: {
            Image("beijing")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }).padding(.horizontal)
    }
}
*/

// 3. 使用 Binding 来控制展开和收起
/*
struct DisclosureGroupView: View {
    @State var show = false
    var body: some View {
        VStack {
            DisclosureGroup("关于我们", isExpanded: $show, content: {
                Image("beijing")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }).padding(.horizontal)
            Button(show ? "收起" : "展开") {
                show.toggle()
            }
        }
    }
}
*/

struct DisclosureGroupView_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroupView()
    }
}
