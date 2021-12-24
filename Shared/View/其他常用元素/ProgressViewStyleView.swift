//
//  ProgressViewStyleView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/5.
//

import SwiftUI

// CircularProgressViewStyle
struct ProgressViewStyleView: View {
    @State var value: Double = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        HStack {
            ProgressView()
                .progressViewStyle(DefaultProgressViewStyle())
            ProgressView(value: value, total: 10)
                .progressViewStyle(DefaultProgressViewStyle())
        }.onReceive(timer, perform: { _ in
            value += 1
            if value > 10 {
                value = 1
            }
        })
    }
}

// LinearProgressViewStyle
/*
struct ProgressViewStyleView: View {
    @State var value: Double = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        HStack {
            ProgressView()
                .progressViewStyle(LinearProgressViewStyle())
            ProgressView(value: value, total: 10)
                .progressViewStyle(LinearProgressViewStyle())
        }.onReceive(timer, perform: { _ in
            value += 1
            if value > 10 {
                value = 1
            }
        })
    }
}
*/

struct ProgressViewStyleView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressViewStyleView()
    }
}
