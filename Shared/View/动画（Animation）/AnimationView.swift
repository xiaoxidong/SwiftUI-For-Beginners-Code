//
//  AnimationView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/12/10.
//

import SwiftUI

// 1. 直接作为 Modifier 使用在 View 上
//struct AnimationView: View {
//    @State var rotation = false
//    var body: some View {
//        VStack(spacing: 16) {
//            Text("SwiftUI For Designers")
//                .padding()
//                .background(Capsule().fill(rotation ? Color.red : Color.light))
//                .rotationEffect(Angle(degrees: rotation ? 360 : 0))
//                .animation(.spring())
//            Button("旋转") {
//                rotation.toggle()
//            }
//        }
//    }
//}


// 2. 特定的操作产生动画
struct AnimationView: View {
    @State var rotation = false
    @State var offset = false
    var body: some View {
        VStack(spacing: 16) {
            Text("SwiftUI For Designers")
                .padding()
                .background(Capsule().fill(rotation ? Color.red : Color.light))
                .rotationEffect(Angle(degrees: rotation ? 360 : 0))
                .offset(y: offset ? -100 : 0)
                .animation(.spring(), value: offset)
            HStack(spacing: 26) {
                Button("旋转") {
                    rotation.toggle()
                }
                
                Button("位移") {
                    offset.toggle()
                }
            }
        }
    }
}


struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
