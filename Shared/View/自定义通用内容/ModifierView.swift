//
//  ModifierView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/12/10.
//

import SwiftUI

// 1. 自定义 Modifier
struct ModifierView: View {
    var body: some View {
        Text("SwiftUI For Beginners")
            .modifier(TitleTextModifier())
    }
}

struct TitleTextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 16, weight: .bold))
            .foregroundColor(Color.black)
    }
}

// 2. 传入参数
/*
struct ModifierView: View {
    var body: some View {
        Text("SwiftUI For Beginners")
            .modifier(CustomTextModifier(size: 20, color: Color.red))
    }
}

struct CustomTextModifier: ViewModifier {
    var size: CGFloat = 16
    var color: Color = Color.black
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: size, weight: .bold))
            .foregroundColor(color)
    }
}
 */

// 3. 处理逻辑
/*
struct ModifierView: View {
    var body: some View {
        Text("SwiftUI For Beginners")
            .modifier(TitleShadowModifier())
    }
}

struct TitleShadowModifier: ViewModifier {
    @State var border = false
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Capsule().fill(Color.light))
            .shadow(color: border ? Color.designred.opacity(0.4) :  Color.clear, radius: 26, x: 0, y: 0)
            .onTapGesture {
                withAnimation(.spring()) {
                    border.toggle()
                }
            }
    }
}
*/

struct ModifierView_Previews: PreviewProvider {
    static var previews: some View {
        ModifierView()
    }
}
