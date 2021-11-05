//
//  StepperView.swift
//  SwiftUI For Designers
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

// 1. 使用 View 作为标题，增加和减少操作初始化
//struct StepperView: View {
//    @State var value: Double = 10
//    var body: some View {
//        Stepper {
//            HStack {
//                Circle().frame(width: 16)
//                Text("\(String(format: "%.1f", value))")
//            }
//        } onIncrement: {
//            value += 0.5
//        } onDecrement: {
//            value -= 0.8
//        } onEditingChanged: { changed in
//            print(changed)
//        }
//    }
//}

// 2. 使用文字作为标题，增加和减少操作初始化
/*
struct StepperView: View {
    @State var value: Double = 10
    var body: some View {
        Stepper("\(String(format: "%.1f", value))") {
            value += 0.5
        } onDecrement: {
            value -= 0.8
        } onEditingChanged: { changed in
            print(changed)
        }
    }
}
*/

// 3. 以固定值在某个区间内均匀增加和减小初始化
/*
struct StepperView: View {
    @State var value: Double = 10
    var body: some View {
        Stepper("\(String(format: "%.1f", value))", value: $value, in: 1...100, step: 5) { changed in
            print(changed)
        }
    }
}
*/

// 4. 以某个固定值增加或减少初始化（无最大最小限制）
struct StepperView: View {
    @State var value: Double = 10
    var body: some View {
        Stepper("\(String(format: "%.1f", value))", value: $value,step: 5) { changed in
            print(changed)
        }
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
