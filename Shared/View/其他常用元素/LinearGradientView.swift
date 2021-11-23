//
//  LinearGradientView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/11/22.
//

import SwiftUI

// 1. 使用 Color 数组和方向初始化
struct LinearGradientView: View {
    var colors: [Color] = [.red, .orange, .yellow, .green, .blue, .purple, .pink]
    @State var startX: CGFloat = 0
    @State var startY: CGFloat = 0
    @State var endX: CGFloat = 1
    @State var endY: CGFloat = 1
    var body: some View {
        LinearGradient(colors: colors, startPoint: UnitPoint(x: startX, y: startY), endPoint: UnitPoint(x: endX, y: endY))
    }
}

// 2. 使用 Gradient 和方向初始化
/*
struct LinearGradientView: View {
    var colors: [Color] = [.red, .orange, .yellow, .green, .blue, .purple, .pink]
    var body: some View {
        LinearGradient(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}
*/

// 3. 使用 Gradient.Stop 和方向初始化
/*
struct LinearGradientView: View {
    let stops = [Gradient.Stop(color: .orange, location: 0.0),
                 Gradient.Stop(color: .yellow, location: 0.4),
                 Gradient.Stop(color: .purple, location: 0.7),
                 Gradient.Stop(color: .pink, location: 1.0)]
    var body: some View {
        LinearGradient(stops: stops, startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}
*/

struct LinearGradientView_Previews: PreviewProvider {
    static var previews: some View {
        LinearGradientView()
    }
}
