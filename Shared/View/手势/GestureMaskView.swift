//
//  GestureMaskView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/12/21.
//

import SwiftUI

struct GestureMaskView: View {
    @State var insideTap = false
    @State var outsideTap = false
    
    @State var mask: GestureMask = .gesture
    var body: some View {
        let inTap = TapGesture()
            .onEnded {
                withAnimation(.spring()) {
                    insideTap.toggle()
                }
            }
        
        let outTap = TapGesture()
            .onEnded {
                withAnimation(.spring()) {
                    outsideTap.toggle()
                }
            }
        
        return VStack(spacing: 16) {
            Rectangle()
                .fill(insideTap ? Color.yellow : Color.pink)
                .gesture( inTap )
            
            Rectangle()
                .fill(Color.clear)
            Text("顶部的方形和整体的 VStack 存在点击手势。")
        }.padding()
        .background(outsideTap ? Color.green : Color.purple)
        .highPriorityGesture(outTap, including: mask)
    }
}

struct GestureMaskView_Previews: PreviewProvider {
    static var previews: some View {
        GestureMaskView()
    }
}
