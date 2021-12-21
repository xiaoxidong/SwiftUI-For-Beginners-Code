//
//  ExclusivelyView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/12/15.
//

import SwiftUI

struct ExclusivelyView: View {
    @State var singleTap = false
    @State var doubleTap = false
    
    var body: some View {
        Circle()
            .fill(singleTap ? Color.yellow : Color.pink)
            .border(doubleTap ? Color.green : Color.clear, width: 4)
            .frame(width: 100, height: 100)
            .gesture(
                TapGesture()
                    .onEnded { _ in
                        withAnimation(.spring()) {
                            singleTap.toggle()
                        }
                    }
            )
            .gesture(
                TapGesture(count: 2)
                    .exclusively(before: TapGesture())
                    .onEnded { _ in
                        withAnimation(.spring()) {
                            doubleTap.toggle()
                        }
                    }
            )
    }
}

struct ExclusivelyView_Previews: PreviewProvider {
    static var previews: some View {
        ExclusivelyView()
    }
}
