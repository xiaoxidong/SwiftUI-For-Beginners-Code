//
//  SequencedView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/12/15.
//

import SwiftUI

struct SequencedView: View {
    @GestureState var dragState = DragState()
    
    var body: some View {
        let gesture = LongPressGesture().sequenced(before: DragGesture())
            .updating($dragState) { value, state, transaction in
                switch value {
                case .first(true):
                    state.dragging = true
                case .second(true, let dragValue):
                    state.offset = dragValue?.translation ?? .zero
                default:
                    state.dragging = false
                }
            }
        
        return Image("people")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 160, height: 160)
            .clipShape(Circle())
            .scaleEffect(self.dragState.dragging ? 1.2 : 1)
            .offset(x: dragState.offset.width, y: dragState.offset.height)
            .gesture(gesture)
            .animation(.spring())
    }
}

struct DragState {
    var offset: CGSize = .zero
    var dragging: Bool = false
}

struct SequencedView_Previews: PreviewProvider {
    static var previews: some View {
        SequencedView()
    }
}
