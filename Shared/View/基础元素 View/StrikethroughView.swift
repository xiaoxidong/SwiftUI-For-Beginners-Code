//
//  StrikethroughView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/13.
//

import SwiftUI

struct StrikethroughView: View {
    var body: some View {
        Text("Hello, World!")
            .foregroundColor(Color.designred)
            .strikethrough()
//            .strikethrough(true, color: .light)
    }
}

struct StrikethroughView_Previews: PreviewProvider {
    static var previews: some View {
        StrikethroughView()
    }
}
