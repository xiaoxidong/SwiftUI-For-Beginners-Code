//
//  TextCaseView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/11/23.
//

import SwiftUI

struct TextCaseView: View {
    var string = "SwiftUI For Designers"
    var body: some View {
        VStack(spacing: 16) {
            Text(string)
                .textCase(.lowercase)
            Text(string)
                .textCase(.uppercase)
        }.font(.system(size: 16, weight: .medium, design: .monospaced))
    }
}

struct TextCaseView_Previews: PreviewProvider {
    static var previews: some View {
        TextCaseView()
    }
}
