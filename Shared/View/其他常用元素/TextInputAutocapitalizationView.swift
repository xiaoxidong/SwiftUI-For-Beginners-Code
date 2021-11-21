//
//  TextInputAutocapitalizationView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/11/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct TextInputAutocapitalizationView: View {
    @State var text1 = ""
    @State var text2 = ""
    @State var text3 = ""
    @State var text4 = ""
    
    var body: some View {
        VStack(spacing: 16) {
            TextField("没有大写设置", text: $text1)
                .textInputAutocapitalization(.never)
            TextField("Word 首字母大写", text: $text2)
                .textInputAutocapitalization(.words)
            TextField("句子首字母大写", text: $text3)
                .textInputAutocapitalization(.sentences)
            TextField("全部设置大写", text: $text4)
                .textInputAutocapitalization(.characters)
        }.textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

@available(iOS 15.0, *)
struct TextInputAutocapitalizationView_Previews: PreviewProvider {
    static var previews: some View {
        TextInputAutocapitalizationView()
    }
}
