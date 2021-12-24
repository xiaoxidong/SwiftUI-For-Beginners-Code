//
//  PopoverView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/23.
//

import SwiftUI

struct PopoverView: View {
    @State var show: Bool = false
    var body: some View {
        Button("show") {
            show.toggle()
        }.popover(isPresented: $show, attachmentAnchor: .rect(.bounds), arrowEdge: .bottom) {
            Color.red
                .frame(minWidth: 300, minHeight: 500)
        }
    }
}

struct PopoverView_Previews: PreviewProvider {
    static var previews: some View {
        PopoverView()
    }
}
