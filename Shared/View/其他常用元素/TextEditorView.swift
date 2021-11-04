//
//  TextEditorView.swift
//  SwiftUI For Designers
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

struct TextEditorView: View {
    @State var text: String = "输入的内容"
    var body: some View {
        TextEditor(text: $text)
            .padding()
    }
}

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorView()
    }
}
