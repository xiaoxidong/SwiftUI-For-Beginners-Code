//
//  FormView.swift
//  SwiftUI For Beginners
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

struct FormView: View {
    @State var isOn = false
    @State var date = Date()
    @State var page: Double = 5
    @State var text = ""
    var body: some View {
        Form {
            Section {
                Toggle(isOn: $isOn) {
                    Label("保存最后打开章节", systemImage: "globe.europe.africa.fill")
                }
                DatePicker(selection: $date, displayedComponents: .date) {
                    Label("日期提醒", systemImage: "calendar.badge.clock")
                }
                Link(destination: URL(string: "https://weibo.com/u/5682979153")!) {
                    Label("打开微博", systemImage: "personalhotspot.circle.fill")
                }
            } header: {
                Text("关于我们")
            } footer: {
                Text("感谢您对我们的支持！")
            }

            Section {
                Slider(value: $page, in: 1...50, step: 1) {
                    Label("最大页面数", systemImage: "newspaper.fill")
                }
                TextField("自定义名称", text: $text)
            } header: {
                Text("应用设置")
            }
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
