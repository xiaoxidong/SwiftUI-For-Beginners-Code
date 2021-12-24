//
//  DatePickerView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/5.
//

import SwiftUI

// 1. 使用一个日期初始化
struct DatePickerView: View {
    @State var selectedDate = Date()
    var body: some View {
        DatePicker("选择日期", selection: $selectedDate, displayedComponents: [.hourAndMinute, .date])
    }
}

// 2. 使用日期区间初始化
/*
struct DatePickerView: View {
    @State var selectedDate = Date()
    var body: some View {
        DatePicker("选择日期", selection: $selectedDate, in: Date()...Date().addingTimeInterval(7 * 24 * 60 * 60), displayedComponents: [.hourAndMinute, .date])
    }
}
*/

// 3. 使用最小日期区间初始化
/*
struct DatePickerView: View {
    @State var selectedDate = Date()
    var body: some View {
        DatePicker("选择日期", selection: $selectedDate, in: Date()..., displayedComponents: [.hourAndMinute, .date])
    }
}
*/

// 4. 使用最大日期区间初始化
/*
struct DatePickerView: View {
    @State var selectedDate = Date()
    var body: some View {
        DatePicker("选择日期", selection: $selectedDate, in: ...Date(), displayedComponents: [.hourAndMinute, .date])
    }
}
*/

// 5. 使用 View 作为标题初始化
/*
struct DatePickerView: View {
    @State var selectedDate = Date()
    var body: some View {
        DatePicker(selection: $selectedDate, displayedComponents: [.hourAndMinute, .date]) {
            HStack {
                Circle().frame(width: 16, height: 16)
                Text("选择日期")
            }
        }
    }
}
*/

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
