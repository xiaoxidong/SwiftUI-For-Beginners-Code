//
//  ColorPicker.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/11/22.
//

import SwiftUI

// 1. 使用标题和 Binding 的 Color 初始化
struct ColorPickerView: View {
    @State var color: Color = .red
    var body: some View {
        VStack {
            Rectangle()
                .fill(color)
                .frame(height: 200)
            ColorPicker("选择颜色", selection: $color, supportsOpacity: true)
        }.padding()
    }
}

// 2. 使用标题和 Binding 的 CGColor 初始化
/*
struct ColorPickerView: View {
    @State var color: CGColor = CGColor(red: 0.2, green: 0.5, blue: 0.8, alpha: 1)
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color(color))
                .frame(height: 200)
            ColorPicker("选择颜色", selection: $color, supportsOpacity: true)
        }.padding()
    }
}
*/

// 3. 使用 View 作为标题初始化
/*
struct ColorPickerView: View {
    @State var color: Color = .red
    var body: some View {
        VStack {
            Rectangle()
                .fill(color)
                .frame(height: 200)
            ColorPicker(selection: $color) {
                HStack {
                    Circle()
                        .fill(color)
                        .frame(width: 20, height: 20)
                    Text("选择颜色")
                        .font(.title3)
                        .foregroundColor(color)
                }
            }
        }.padding()
    }
}
*/

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
