//
//  SiderBarView.swift
//  SwiftUI For Designers
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

// 1. 使用标题和最大最小标签初始化
//struct SiderBarView: View {
//    @State var value: Double = 10
//    var body: some View {
//        Slider(value: $value, in: 1...100) {
//            Text("当前进度")
//        } minimumValueLabel: {
//            Image(systemName: "tortoise")
//        } maximumValueLabel: {
//            Image(systemName: "hare")
//        } onEditingChanged: { changed in
//            print(changed)
//        }
//    }
//}

// 2. 使用标题初始化
/*
struct SiderBarView: View {
    @State var value: Double = 10
    var body: some View {
        Slider(value: $value, in: 1...100) {
            Text("当前进度")
        } onEditingChanged: { changed in
            print(changed)
        }
    }
}
*/

// 3. 不使用标题初始化
/*
struct SiderBarView: View {
    @State var value: Double = 10
    var body: some View {
        Slider(value: $value, in: 1...100) { changed in
            print(changed)
        }
    }
}
*/

// 4. 使用标题和滑动大小初始化
/*
struct SiderBarView: View {
    @State var value: Double = 10
    var body: some View {
        Slider(value: $value, in: 1...100, step: 2) {
            Text("当前进度")
        } onEditingChanged: { changed in
            print(changed)
        }
    }
}
*/

// 5. 无标题，使用滑动大小初始化
struct SiderBarView: View {
    @State var value: Double = 10
    var body: some View {
        Slider(value: $value, in: 1...100, step: 10) { changed in
            print(changed)
        }
    }
}

struct SiderBarView_Previews: PreviewProvider {
    static var previews: some View {
        SiderBarView()
    }
}
