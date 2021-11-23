//
//  SwipeActionsView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/11/22.
//

import SwiftUI

struct SwipeActionsView: View {
    @State var names: [String] = ["湖人队", "雄鹿队", "快船队", "太阳队", "凯尔特人队", "森林狼队"]
    var body: some View {
        if #available(iOS 15.0, macOS 12.0, *) {
            List(names, id: \.self) { name in
                Text("\(name)")
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button {
                            names.append(name)
                        } label: {
                            Text("复制")
                        }.tint(Color.yellow)
                        Button(role: .destructive) {
                            names.remove(at: names.firstIndex(of: name)!)
                        } label: {
                            Text("删除")
                        }
                    }
            }
        } else {
            Text("swipeActions 需要在系统 iOS 15.0, macOS 12.0 上使用。")
        }
    }
}

struct SwipeActionsView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionsView()
    }
}
