//
//  TextFieldStyleView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/11/3.
//

import SwiftUI

struct TextFieldStyleView: View {
    @State var text: String = ""
    var body: some View {
        TextField("请输入内容", text: $text)
//            .textFieldStyle(DefaultTextFieldStyle())
//            .textFieldStyle(PlainTextFieldStyle())
            .textFieldStyle(RoundedBorderTextFieldStyle())
//            .textFieldStyle(SquareBorderTextFieldStyle())
    }
}

struct TextFieldStyleView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldStyleView()
    }
}
