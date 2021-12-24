//
//  DisabledView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

// hidden
//struct DisabledView: View {
//    var body: some View {
//        VStack(spacing: 16) {
//            Text("SwiftUI For Beginners")
//            Label("开始学习", systemImage: "eyes.inverse")
//                .hidden()
//            Divider()
//        }
//    }
//}

// disabled
struct DisabledView: View {
    @State var start = true
    var body: some View {
        Button {
            start.toggle()
        } label: {
            Label(start ? "播放" : "暂停", systemImage: start ? "play.fill" : "pause.fill")
        }.disabled(false)
    }
}


struct DisabledView_Previews: PreviewProvider {
    static var previews: some View {
        DisabledView()
    }
}
