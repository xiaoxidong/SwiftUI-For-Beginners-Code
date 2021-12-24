//
//  SplitViewView.swift
//  SwiftUI For Beginners
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

// HSplitView
// 仅仅在 Mac 上使用。
struct SplitViewView: View {
    var body: some View {
        HSplitView {
            Color.red
                .frame(minWidth: 20, maxWidth: 100)
            Color.pink
                .frame(minWidth: 20)
            Color.purple
                .frame(maxWidth: 100)
        }
    }
}

// VSplitView
/*
struct SplitViewView: View {
    var body: some View {
        VSplitView {
            Color.red
                .frame(minHeight: 20, maxHeight: 100)
            Color.pink
                .frame(minHeight: 20)
            Color.purple
                .frame(minHeight: 100)
        }
    }
}
*/

struct SplitViewView_Previews: PreviewProvider {
    static var previews: some View {
        SplitViewView()
    }
}
