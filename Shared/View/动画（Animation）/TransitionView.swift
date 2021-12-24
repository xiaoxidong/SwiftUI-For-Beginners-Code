//
//  TransactionView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/12/10.
//

import SwiftUI

struct TransitionView: View {
    @State var show = true
    var body: some View {
        VStack {
            if show {
                Text("SwiftUI For Beginners")
                    .padding()
                    .background(Capsule().fill(Color.light))
                    .transition(.scale(scale: 0.2, anchor: .topLeading))
            }
            
            Button(show ? "隐藏" : "显示") {
                withAnimation(.spring()) {
                    show.toggle()
                }
            }
        }
    }
}

struct TransactionView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView()
    }
}
