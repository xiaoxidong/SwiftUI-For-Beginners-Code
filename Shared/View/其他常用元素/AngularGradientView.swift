//
//  AngularGradientView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/22.
//

import SwiftUI

// 1. 使用颜色数组，中心和角度初始化
struct AngularGradientView: View {
    var colors: [Color] = [.red, .orange, .yellow, .green, .blue, .purple, .pink]
    var body: some View {
        AngularGradient(colors: colors, center: .center, angle: Angle(degrees: 30))
    }
}

// 2. 使用颜色数组，中心，初始角度和结束角度初始化
/*
struct AngularGradientView: View {
    var colors: [Color] = [.red, .orange, .yellow, .green, .blue, .purple, .pink]
    var body: some View {
        AngularGradient(colors: colors, center: .center, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 180))
    }
}
*/


struct AngularGradientView_Previews: PreviewProvider {
    static var previews: some View {
        AngularGradientView()
    }
}
