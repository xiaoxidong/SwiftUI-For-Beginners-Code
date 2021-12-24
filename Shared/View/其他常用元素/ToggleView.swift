//
//  ToggleView.swift
//  SwiftUI For Beginners
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

// 1. 使用文本和 Binding 初始化
struct ToggleView: View {
    @State var on: Bool = true
    var body: some View {
        Toggle("Save", isOn: $on)
            .labelsHidden()
            .onChange(of: on) { newValue in
                print(newValue)
            }
    }
}

// 3. 使用一个 View 作为标题
/*
struct ToggleView: View {
    @State var on: Bool = true
    var body: some View {
        Toggle(isOn: $on) {
            Capsule()
                .frame(width: 40, height: 26)
        }
    }
}
*/

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
