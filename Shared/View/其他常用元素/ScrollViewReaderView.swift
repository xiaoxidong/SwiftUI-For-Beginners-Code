//
//  ScrollViewReaderView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/11/22.
//

import SwiftUI

struct ScrollViewReaderView: View {
    var body: some View {
        ScrollViewReader { scrollProxy in
            List(1..<20) { index in
                Text("第 \(index) 行")
                    .frame(height: 86)
                    .id(index)
                    .onTapGesture {
                        scrollProxy.scrollTo(index, anchor: .top)
                    }
            }
        }
    }
}

struct ScrollViewReaderView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReaderView()
    }
}
