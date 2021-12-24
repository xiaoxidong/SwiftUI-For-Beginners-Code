//
//  DoubleTapGestureView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/12/15.
//

import SwiftUI

// 1. onTapGesture
struct DoubleTapGestureView: View {
    @State var tap = false
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(tap ? Color.pink : Color.purple)
            .onTapGesture(count: 2) {
                withAnimation(.spring()) {
                    tap.toggle()
                }
            }
    }
}

// 2. gesture
/*
struct DoubleTapGestureView: View {
    @State var tap = false
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(tap ? Color.pink : Color.purple)
            .gesture(
                TapGesture(count: 2)
                    .onEnded {
                        withAnimation(.spring()) {
                            tap.toggle()
                        }
                    }
            )
    }
}
*/

struct DoubleTapGestureView_Previews: PreviewProvider {
    static var previews: some View {
        DoubleTapGestureView()
    }
}
