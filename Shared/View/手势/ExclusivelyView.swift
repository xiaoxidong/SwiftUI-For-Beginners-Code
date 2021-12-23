//
//  ExclusivelyView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/12/15.
//

import SwiftUI

struct ExclusivelyView: View {
    @GestureState var gesture = Gesture()
    var body: some View {
        let exclusivelyGesture = DragGesture()
            .exclusively(before: MagnificationGesture())
            .updating($gesture) { value, state, transacation in
                switch value {
                case .first(let drag):
                    state.scale = 1
                    state.offset = drag.translation
                case .second(let magnification):
                    state.scale = magnification
                    state.offset = .zero
                }
            }
        
        return Image("people")
            .clipShape(Circle())
            .offset(gesture.offset)
            .scaleEffect(gesture.scale)
            .gesture(exclusivelyGesture)
            .animation(.spring())
    }
}

struct Gesture {
    var scale: CGFloat = 1.0
    var offset: CGSize = .zero
}

struct ExclusivelyView_Previews: PreviewProvider {
    static var previews: some View {
        ExclusivelyView()
    }
}
