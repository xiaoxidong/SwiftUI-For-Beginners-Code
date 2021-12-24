//
//  TextSelectionView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI
@available(iOS 15.0, macOS 12.0, *)
struct TextSelectionView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("SwiftUI For Beginners 可选择")
                .textSelection(.enabled)
            Text("SwiftUI For Beginners 不可选择")
                .textSelection(.disabled)
        }
    }
}

@available(iOS 15.0, macOS 12.0, *)
struct TextSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        TextSelectionView()
    }
}
