//
//  GestureMaskView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/12/21.
//

import SwiftUI

struct GestureMaskView: View {
    @State var insideTap = false
    @State var outsideTap = false
    
    @State var mask: GestureMask = .gesture
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
            , including: mask)
    }
}

struct GestureMaskView_Previews: PreviewProvider {
    static var previews: some View {
        GestureMaskView()
    }
}
