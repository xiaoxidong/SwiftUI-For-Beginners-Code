//
//  OnChangedView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

struct OnChangeView: View {
    @State var text = "未选择"
    @State var isOn = false
    var body: some View {
        VStack(spacing: 16) {
            Text(text)
            Toggle("设置", isOn: $isOn)
        }.onChange(of: isOn) { newValue in
            if newValue {
                text = "已选择内容"
            } else {
                text = "未选择"
            }
        }
    }
}

struct OnChangeView_Previews: PreviewProvider {
    static var previews: some View {
        OnChangeView()
    }
}
