//
//  EmptyViewView.swift
//  SwiftUI For Designers
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

struct EmptyViewView: View {
    var body: some View {
        HStack {
            EmptyView()
                .frame(width: 100, height: 50, alignment: .center)
                .border(Color.blue, width: 3.0)
            Spacer()
            Text("A")
            Spacer()
            Color.clear
                .frame(width: 100, height: 50, alignment: .center)
                .border(Color.red, width: 2.0)
        }
        .padding(.vertical)
        .border(Color.purple, width: 2.0)
    }
}

struct EmptyViewView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyViewView()
    }
}
