//
//  OffsetView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

struct OffsetView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("SwiftUI For Beginners")
                .offset(x: 10, y: 20)
                .overlay(Color.yellow)
            Rectangle()
                .frame(width: 100, height: 30)
        }
    }
}

struct OffsetView_Previews: PreviewProvider {
    static var previews: some View {
        OffsetView()
    }
}
