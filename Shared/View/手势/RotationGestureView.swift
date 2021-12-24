//
//  RotationGestureView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/12/15.
//

import SwiftUI

struct RotationGestureView: View {
    @State var add: Angle = .degrees(0)
    @State var angle: Angle = .degrees(0)
    
    var body: some View {
        RoundedRectangle(cornerRadius: 12, style: .continuous)
            .frame(width: 100, height: 100)
            .foregroundColor(Color.purple)
            .rotationEffect(angle + add)
            .gesture(
                RotationGesture()
                    .onChanged { angle in
                        withAnimation(.spring()) {
                            self.add = angle
                        }
                    }
                    .onEnded { angle in
                        self.angle += self.add
                        self.add = .degrees(0)
                    }
            )
    }
}

struct RotationGestureView_Previews: PreviewProvider {
    static var previews: some View {
        RotationGestureView()
    }
}
