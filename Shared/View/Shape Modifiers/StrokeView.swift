//
//  StrokeView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

// 1. ShapeStyle + LineWidth
struct StrokeView: View {
    var body: some View {
        Circle()
            .stroke(Color.red, lineWidth: 10)
            .frame(width: 100, height: 100)
    }
}

// 添加颜色
/*
struct StrokeView: View {
    var body: some View {
        Circle()
            .stroke(Color.red, lineWidth: 20)
            .background(Circle().fill(Color.yellow))
//            .foregroundColor(.green)
//            .background(Color.purple)
            .frame(width: 100, height: 100)
    }
}
*/

// 2. ShapeStyle + StrokeStyle
/*
struct StrokeView: View {
    let style = StrokeStyle(lineWidth: 10.00, lineCap: .round, lineJoin: .round, miterLimit: 0.00, dash: [25.0, 15.0, 30.0, 25.0], dashPhase: -36.00)
    var body: some View {
        Circle()
            .stroke(Color.red, style: style)
            .frame(width: 200, height: 200)
    }
}
*/

// 3. ForegroundColor + LineWidth
/*
struct StrokeView: View {
    var body: some View {
        Circle()
            .stroke(lineWidth: 10)
            .foregroundColor(Color.red)
            .frame(width: 100, height: 100)
    }
}
*/

// 4. ForegroundColor + StrokeStyle
/*
struct StrokeView: View {
    let style = StrokeStyle(lineWidth: 10.00, lineCap: .round, lineJoin: .round, miterLimit: 0.00, dash: [25.0, 15.0, 30.0, 25.0], dashPhase: -36.00)
    var body: some View {
        Circle()
            .stroke(style: style)
            .foregroundColor(Color.red)
            .frame(width: 200, height: 200)
    }
}
*/

struct StrokeView_Previews: PreviewProvider {
    static var previews: some View {
        StrokeView()
    }
}
