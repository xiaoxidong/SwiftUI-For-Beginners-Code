//
//  ModifiersView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/12/15.
//

import SwiftUI

#if os(macOS)
struct ModifiersView: View {
    @State var tapped = false
    @GestureState var offset: CGSize = .zero
    var body: some View {
        let tap = TapGesture()
            .modifiers([.command])
            .onEnded {
                withAnimation(.spring()) {
                    tapped.toggle()
                }
            }
        let drag = DragGesture()
            .modifiers([.shift])
            .updating($offset) { value, state, transaction in
                withAnimation(.spring()) {
                    state = value.translation
                }
            }
        return Image("people")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 160, height: 160)
            .clipShape(Circle())
            .shadow(color: Color.designred.opacity(tapped ? 0.2 : 0), radius: 12, x: 0, y: 6)
            .offset(offset)
            .gesture(tap)
            .gesture(drag)
    }
}
#else
struct ModifiersView: View {
    var body: some View {
        Text("手势的 .modifiers 仅仅支持 Mac 系统。")
    }
}
#endif

struct ModifiersView_Previews: PreviewProvider {
    static var previews: some View {
        ModifiersView()
    }
}
