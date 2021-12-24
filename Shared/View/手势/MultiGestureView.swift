//
//  MultiGestureView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/12/15.
//

import SwiftUI

struct MultiGestureView: View {
    @State var insideTap = false
    @State var outsideTap = false
    
    var body: some View {
        VStack(spacing: 16) {
            Rectangle()
                .fill(insideTap ? Color.yellow : Color.pink)
                .onTapGesture {
                    withAnimation(.spring()) {
                        insideTap.toggle()
                    }
                }
            
            Rectangle()
                .fill(outsideTap ? Color.green : Color.purple)
        }.highPriorityGesture(
            TapGesture()
                .onEnded {
                    withAnimation(.spring()) {
                        outsideTap.toggle()
                    }
                }
        )
    }
}

struct MultiGestureView_Previews: PreviewProvider {
    static var previews: some View {
        MultiGestureView()
    }
}
