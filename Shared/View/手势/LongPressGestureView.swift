//
//  LongPressGesture.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/12/15.
//

import SwiftUI

struct LongPressGestureView: View {
    @State var tap = false
    @State var changed = false
    var body: some View {
        VStack {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(tap ? Color.pink : Color.purple)
            Text(changed ? "长按中..." : "")
        }
        .onLongPressGesture(minimumDuration: 3, maximumDistance: 6) {
            withAnimation(.spring()) {
                tap.toggle()
            }
        } onPressingChanged: { changed in
            self.changed = changed
        }
    }
}


/*
struct LongPressGestureView: View {
    @State var tap = false
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(tap ? Color.pink : Color.purple)
        .gesture(
            LongPressGesture(minimumDuration: 3, maximumDistance: 8)
                .onEnded({ value in
                    withAnimation(.spring()) {
                        tap.toggle()
                    }
                })
        )
    }
}
*/

struct LongPressGestureView_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGestureView()
    }
}
