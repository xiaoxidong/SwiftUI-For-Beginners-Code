//
//  FixedSizeView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

struct FixedSizeView: View {
    var body: some View {
        HStack(spacing: 0) {
            Text("SwiftUI For Beginners 是一款教你做 Apple 全平台开发的应用。")
                .fixedSize(horizontal: false, vertical: true)
            Color.yellow
                .frame(minWidth: 200)
        }
    }
}

struct FixedSizeView_Previews: PreviewProvider {
    static var previews: some View {
        FixedSizeView()
    }
}
