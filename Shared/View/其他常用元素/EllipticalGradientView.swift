//
//  EllipticalGradientView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/22.
//

import SwiftUI

// 1. 使用颜色数组初始化
struct EllipticalGradientView: View {
    var colors: [Color] = [.red, .orange, .yellow, .green, .blue, .purple, .pink]
    var body: some View {
        if #available(iOS 15.0, macOS 12.0, *) {
            EllipticalGradient(colors: colors, center: .center, startRadiusFraction: 0.2, endRadiusFraction: 0.8)
        } else {
            Text("EllipticalGradient 需要在 iOS 15.0, macOS 12.0 上使用。")
        }
    }
}

// 2. 使用 Gradient 初始化
/*
struct EllipticalGradientView: View {
    var colors: [Color] = [.red, .orange, .yellow, .green, .blue, .purple, .pink]
    var body: some View {
        if #available(iOS 15.0, macOS 12.0, *) {
            EllipticalGradient(gradient: Gradient(colors: colors), center: .center, startRadiusFraction: 0.2, endRadiusFraction: 0.8)
        } else {
            Text("EllipticalGradient 需要在 iOS 15.0, macOS 12.0 上使用。")
        }
    }
}
*/

// 3. 使用 Gradient.Stop 初始化
/*
struct EllipticalGradientView: View {
    let stops = [Gradient.Stop(color: .orange, location: 0.0),
                 Gradient.Stop(color: .yellow, location: 0.4),
                 Gradient.Stop(color: .purple, location: 0.7),
                 Gradient.Stop(color: .pink, location: 1.0)]
    var body: some View {
        if #available(iOS 15.0, macOS 12.0, *) {
            EllipticalGradient(stops: stops, center: .center, startRadiusFraction: 0.2, endRadiusFraction: 0.8)
        } else {
            Text("EllipticalGradient 需要在 iOS 15.0, macOS 12.0 上使用。")
        }
    }
}
*/

struct EllipticalGradientView_Previews: PreviewProvider {
    static var previews: some View {
        EllipticalGradientView()
    }
}
