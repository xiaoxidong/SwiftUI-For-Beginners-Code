//
//  UnderlineView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/13.
//

import SwiftUI

struct UnderlineView: View {
    var body: some View {
        Text("Hello, World!")
            .foregroundColor(Color.designred)
            .underline()
//            .underline(true, color: .light)
    }
}

struct UnderlineView_Previews: PreviewProvider {
    static var previews: some View {
        UnderlineView()
    }
}
