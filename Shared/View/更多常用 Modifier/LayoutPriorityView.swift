//
//  LayoutPriorityView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

struct LayoutPriorityView: View {
    var body: some View {
        HStack(spacing: 0) {
            Color.red
                .frame(minWidth: 30)
                .layoutPriority(0)
            Color.yellow
                .frame(minWidth: 60)
                .layoutPriority(1)
        }
    }
}

struct LayoutPriorityView_Previews: PreviewProvider {
    static var previews: some View {
        LayoutPriorityView()
    }
}
