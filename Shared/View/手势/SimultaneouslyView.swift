//
//  SimultaneouslyView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/12/15.
//

import SwiftUI

struct SimultaneouslyView: View {
    @GestureState var gesture = RotateAndMagnify()
    
    var body: some View {
        let multiGesture = MagnificationGesture()
            .simultaneously(with: RotationGesture())
            .updating($gesture) { value, state, transacation in
                state.angle = value.second ?? .zero
                state.scale = value.first ?? 0
            }
        
        return Image("people")
            .clipShape(Circle())
            .rotationEffect(gesture.angle)
            .scaleEffect(gesture.scale)
            .gesture(multiGesture)
            .animation(.spring())
    }
    
    struct RotateAndMagnify {
        var scale: CGFloat = 1.0
        var angle: Angle = .zero
    }
}

struct SimultaneouslyView_Previews: PreviewProvider {
    static var previews: some View {
        SimultaneouslyView()
    }
}
