//
//  AnimationParameterView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/12/10.
//

import SwiftUI

// 1. 动画延迟
struct AnimationParameterView: View {
    @State var animate = false
    var body: some View {
        VStack(spacing: 26) {
            RoundedRectangle(cornerRadius: 12, style: .continuous)
                .frame(width: 60, height: 60)
                .foregroundColor(Color.purple)
                .offset(y: animate ? -300 : 0)
                .scaleEffect(animate ? 0 : 1)
                .animation(.spring().delay(2))

            Button("运行动画") {
                animate.toggle()
            }
        }
    }
}

// 2. 动画速率
/*
struct AnimationParameterView: View {
    @State var animate = false
    var body: some View {
        VStack(spacing: 26) {
            RoundedRectangle(cornerRadius: 12, style: .continuous)
                .frame(width: 60, height: 60)
                .foregroundColor(Color.purple)
                .offset(y: animate ? -300 : 0)
                .scaleEffect(animate ? 0 : 1)
                .animation(.spring().speed(0.6))
            
            Button("运行动画") {
                animate.toggle()
            }
        }
    }
}
*/

// 3. 动画循环次数
/*
struct AnimationParameterView: View {
    @State var animate = false
    var body: some View {
        VStack(spacing: 26) {
            RoundedRectangle(cornerRadius: 12, style: .continuous)
                .frame(width: 60, height: 60)
                .foregroundColor(Color.purple)
                .offset(y: animate ? -300 : 0)
                .animation(.spring().repeatCount(2, autoreverses: true))
            
            Button("运行动画") {
                animate.toggle()
            }
        }
    }
}
*/

// 4. 动画一直循环
/*
struct AnimationParameterView: View {
    @State var animate = false
    var body: some View {
        VStack(spacing: 26) {
            RoundedRectangle(cornerRadius: 12, style: .continuous)
                .frame(width: 60, height: 60)
                .foregroundColor(Color.purple)
                .offset(y: animate ? -300 : 0)
                .scaleEffect(animate ? 0 : 1)
                .animation(.spring().repeatForever(autoreverses: true))

            Button("运行动画") {
                animate.toggle()
            }
        }
    }
}
*/

struct AnimationParameterView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationParameterView()
    }
}
