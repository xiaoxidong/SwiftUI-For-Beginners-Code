//
//  RadialGradientView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/23.
//

import SwiftUI

// 1. 使用颜色数组初始化
//struct RadialGradientView: View {
//    var colors: [Color] = [.red, .orange, .yellow, .green, .blue, .purple, .pink]
//
//    var body: some View {
//        RadialGradient(colors: colors, center: UnitPoint(x: 0.5, y: 0.5), startRadius: 100, endRadius: 200)
//    }
//}

// 2. 使用 Gradient 初始化
/*
struct RadialGradientView: View {
    var colors: [Color] = [.red, .orange, .yellow, .green, .blue, .purple, .pink]
    
    var body: some View {
        RadialGradient(gradient: Gradient(colors: colors), center: .center, startRadius: 100, endRadius: 200)
    }
}
*/

// 3. 使用 Gradient.Stop 初始化
struct RadialGradientView: View {
    let stops = [Gradient.Stop(color: .orange, location: 0.0),
                 Gradient.Stop(color: .yellow, location: 0.4),
                 Gradient.Stop(color: .purple, location: 0.7),
                 Gradient.Stop(color: .pink, location: 1.0)]
    var body: some View {
        RadialGradient(stops: stops, center: .center, startRadius: 100, endRadius: 200)
    }
}

struct RadialGradientView_Previews: PreviewProvider {
    static var previews: some View {
        RadialGradientView()
    }
}
