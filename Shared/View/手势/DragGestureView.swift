//
//  DragGestureView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/12/15.
//

import SwiftUI

struct DragGestureView: View {
    @State var offset = CGSize.zero
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(Color.purple)
            .offset(offset)
            .gesture(
                DragGesture()
                    .onChanged({ gesture in
                        self.offset = gesture.translation
                    })
                    .onEnded({ gesture in
                        withAnimation(.spring()) {
                            self.offset = .zero
                        }
                    })
            )
    }
}

struct DragGestureView_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureView()
    }
}
