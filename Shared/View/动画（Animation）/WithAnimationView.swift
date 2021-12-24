//
//  WithAnimationView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/12/10.
//

import SwiftUI

struct WithAnimationView: View {
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
            
            Button("运行动画") {
                withAnimation(.spring()) {
                    animate.toggle()
                }
            }
        }
    }
}

struct WithAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        WithAnimationView()
    }
}
