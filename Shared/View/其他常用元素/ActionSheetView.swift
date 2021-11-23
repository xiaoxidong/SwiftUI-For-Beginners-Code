//
//  ActionSheetView.swift
//  SwiftUI For Designers
//
//  Created by XiaoDong Yuan on 2021/11/3.
//

import SwiftUI

struct ActionSheetView: View {
    @State var show = false
    var body: some View {
        #if os(iOS)
        Button("Show") {
            show.toggle()
        }.actionSheet(isPresented: $show) {
            ActionSheet(title: Text("选择操作"), message: Text("选择一个操作！"), buttons: [
                ActionSheet.Button.default(Text("合并")) { print("合并") },
                ActionSheet.Button.destructive(Text("删除")) { print("删除") },
                ActionSheet.Button.cancel(Text("取消")) { print("取消") }
            ])
        }
        #else
        Text("actionSheet 不能在 macOS 上使用。")
        #endif
    }
}

struct ActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetView()
    }
}
