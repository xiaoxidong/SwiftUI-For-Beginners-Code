//
//  AnimationTypeView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/12/10.
//

import SwiftUI

struct AnimationTypeView: View {
    @State var animate = false
    var body: some View {
        VStack(spacing: 26) {
            HStack(spacing: 16) {
                RoundedRectangle(cornerRadius: 12, style: .continuous)
                    .frame(width: 60, height: 60)
                    .foregroundColor(Color.pink)
                    .rotationEffect(Angle(degrees: animate ? 270 : 0))
                
                RoundedRectangle(cornerRadius: 12, style: .continuous)
                    .frame(width: 60, height: 60)
                    .foregroundColor(Color.yellow)
                    .scaleEffect(animate ? 0 : 1)
                
                RoundedRectangle(cornerRadius: 12, style: .continuous)
                    .frame(width: 60, height: 60)
                    .foregroundColor(Color.purple)
                    .offset(y: animate ? -300 : 0)
                    .scaleEffect(animate ? 0 : 1)
            }
            // 默认形式
//            .animation(.easeIn)
            
            // 时间参数
            .animation(.easeIn(duration: 1))
            
            Button("运行动画") {
                animate.toggle()
            }
        }
    }
}

struct AnimationTypeView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTypeView()
    }
}
