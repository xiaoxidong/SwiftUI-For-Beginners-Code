//
//  MagnificationGestureView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/12/15.
//

import SwiftUI

struct MagnificationGestureView: View {
    @State var scale: CGFloat = 1
    @State var add: CGFloat = 0
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(Color.purple)
            .scaleEffect(scale + add)
            .gesture(
                MagnificationGesture()
                    .onChanged { amount in
                        self.add = amount - 1
                    }
                    .onEnded { amount in
                        self.scale += self.add
                        self.add = 0
                    }
            )
    }
}

struct MagnificationGestureView_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGestureView()
    }
}
