//
//  HighPriorityGestureView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/12/15.
//

import SwiftUI

// 1. 同一 View 的手势
struct HighPriorityGestureView: View {
    @State var singleTap = false
    @State var doubleTap = false
    
    var body: some View {
        Circle()
            .fill(singleTap ? Color.yellow : Color.pink)
            .border(doubleTap ? Color.green : Color.clear, width: 4)
            .frame(width: 100, height: 100)
            .onTapGesture {
                withAnimation(.spring()) {
                    singleTap.toggle()
                }
            }
            .highPriorityGesture(
                TapGesture(count: 2)
                    .onEnded {
                        withAnimation(.spring()) {
                            doubleTap.toggle()
                        }
                    }
            )
    }
}

struct HighPriorityGestureView_Previews: PreviewProvider {
    static var previews: some View {
        HighPriorityGestureView()
    }
}
