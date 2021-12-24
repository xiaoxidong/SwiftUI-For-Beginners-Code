//
//  TintView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

@available(iOS 15.0, macOS 12.0, *)
struct TintView: View {
    var body: some View {
        Form {
            Text("SwiftUI For Beginners")
            Toggle("保存内容", isOn: .constant(true))
            Button(action: { }) {
                Label("静音播放", systemImage: "speaker.slash.circle.fill")
            }
        }.tint(Color.red)
    }
}

@available(iOS 15.0, macOS 12.0, *)
struct TintView_Previews: PreviewProvider {
    static var previews: some View {
        TintView()
    }
}
