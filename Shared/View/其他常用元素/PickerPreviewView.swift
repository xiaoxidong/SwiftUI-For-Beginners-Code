//
//  PickerView.swift
//  SwiftUI For Beginners
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

// 1. 使用标题初始化
//struct PickerPreviewView: View {
//    @State var selected: Int = 1
//    var body: some View {
//        Picker("选择类型", selection: $selected) {
//            Label("工作日", systemImage: "face.dashed")
//                .tag(1)
//            Label("周末", systemImage: "square.dashed")
//                .tag(2)
//            Circle()
//                .tag(3)
//        }
//    }
//}

// 3. 使用一个 View 来初始化
struct PickerPreviewView: View {
    @State var selected: Int = 1
    var body: some View {
        Picker(selection: $selected) {
            Label("工作日", systemImage: "face.dashed")
                .tag(1)
            Label("周末", systemImage: "square.dashed")
                .tag(2)
        } label: {
            HStack {
                Circle()
                    .frame(width: 16, height: 16)
                Text("选择类型")
            }
        }
    }
}

struct PickerPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        PickerPreviewView()
    }
}
