//
//  PickerStyleView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/4.
//

import SwiftUI

struct PickerStyleView: View {
    @State var selected: Int = 1
    var body: some View {
        Picker("选择类型", selection: $selected) {
            Label("工作日", systemImage: "face.dashed")
                .tag(1)
            Label("周末", systemImage: "square.dashed")
                .tag(2)
            Label("休息日", systemImage: "square.dashed")
                .tag(3)
        }
//        .pickerStyle(DefaultPickerStyle())
        .pickerStyle(InlinePickerStyle())
//        .pickerStyle(MenuPickerStyle())
//        .pickerStyle(SegmentedPickerStyle())
//        // 仅限 iOS 和 watchOS
//        .pickerStyle(WheelPickerStyle())
//        // 仅限 Mac
//        .pickerStyle(PopUpButtonPickerStyle())
//        // 仅限 Mac
//        .pickerStyle(RadioGroupPickerStyle())
    }
}

struct PickerStyleView_Previews: PreviewProvider {
    static var previews: some View {
        PickerStyleView()
    }
}
