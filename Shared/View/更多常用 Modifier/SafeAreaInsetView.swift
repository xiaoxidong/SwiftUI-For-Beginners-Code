//
//  SafeAreaInsetView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

@available(iOS 15.0, macOS 12.0, *)
struct SafeAreaInsetView: View {
    var body: some View {
        Color.red
            .safeAreaInset(edge: .bottom, alignment: .leading, spacing: 20) {
                Label("新建内容", systemImage: "plus.circle.fill")
                    .padding(0)
                    .background(Color.yellow)
            }
    }
}

@available(iOS 15.0, macOS 12.0, *)
struct SafeAreaInsetView_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaInsetView()
    }
}
