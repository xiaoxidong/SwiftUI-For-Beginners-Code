//
//  OverlayView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

// 1. 使用 View 和对齐方式初始化
//struct OverlayView: View {
//    var body: some View {
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Circle()
//                    .frame(width: 50, height: 50)
//                    .foregroundColor(Color.purple)
//                , alignment: .topLeading
//            )
//    }
//}

// 3. 使用 ignoresSafeAreaEdges 初始化
/*
@available(iOS 15.0, macOS 12.0, *)
struct OverlayView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("SwiftUI For Designers")
                .font(.title2)
                .frame(maxWidth: .infinity, alignment: .center)
        }
        .overlay(Color.purple.opacity(0.4), ignoresSafeAreaEdges: .bottom)
    }
}
*/

// 4. 使用 Shape 和 ShapeStyle 初始化
@available(iOS 15.0, macOS 12.0, *)
struct OverlayView: View {
    var colors: [Color] = [.purple, .pink, .yellow]
    var body: some View {
        Rectangle()
            .frame(width: 100, height: 100)
            .overlay(LinearGradient(colors: colors, startPoint: .topLeading, endPoint: .bottomTrailing), in: Circle())
    }
}


@available(iOS 15.0, macOS 12.0, *)
struct OverlayView_Previews: PreviewProvider {
    static var previews: some View {
        OverlayView()
    }
}
