//
//  BackgroundView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

// 1. 使用一个 View 初始化
struct BackgroundView: View {
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .background(Color.red)
            .frame(width: 200, height: 200, alignment: .topLeading)
            .background(Color.yellow)
    }
}


// 2. 使用一个 View 初始化
/*
 struct BackgroundView: View {
 var body: some View {
 if #available(iOS 15.0, macOS 12.0, *) {
 Circle()
 .frame(width: 100, height: 100)
 .foregroundColor(Color.light)
 .frame(width: 200, height: 200, alignment: .topLeading)
 .background(alignment: .bottom) {
 Circle().frame(width: 100, height: 100)
 }
 .background(alignment: .bottom) {
 Color.designred
 }
 } else {
 Text("系统不满足要求的哦～")
 }
 }
 }
 */

// 3. 为背景单独设置 ignoresSafeAreaEdges
/*
 struct BackgroundView: View {
 var body: some View {
 if #available(iOS 15.0, macOS 12.0, *) {
 ScrollView {
 ForEach(0..<66) { index in
 Text("第 \(index) 行")
 .foregroundColor(.designred)
 .frame(maxWidth: .infinity, alignment: .leading)
 .padding()
 }
 }
 .background(Color.light, ignoresSafeAreaEdges: .all)
 } else {
 Text("当前系统暂时无法查看！")
 }
 }
 }
 */
// 自定义上面的效果
/*
 struct BackgroundView: View {
 var body: some View {
 ZStack {
 Color.light.edgesIgnoringSafeArea(.all)
 ScrollView {
 ForEach(0..<66) { index in
 Text("第 \(index) 行")
 .foregroundColor(.designred)
 .frame(maxWidth: .infinity, alignment: .leading)
 .padding()
 }
 }
 }
 }
 }
 */


// 4. safeAreaInset
/*
struct BackgroundView: View {
    var body: some View {
        if #available(iOS 15.0, macOS 12.0, *) {
            ScrollView {
                ForEach(1..<66) { index in
                    Text("第 \(index) 行")
                        .foregroundColor(.designred)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                }
            }
            .background(Color.light)
            .safeAreaInset(edge: .bottom) {
                Text("设置")
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(ignoresSafeAreaEdges: .bottom)
            }
        } else {
            Text("当前系统暂时无法查看！")
        }
    }
}
*/

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            BackgroundView()
                .previewInterfaceOrientation(.landscapeLeft)
        } else {
            BackgroundView()
        }
    }
}
