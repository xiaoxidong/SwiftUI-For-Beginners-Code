//
//  EditButtonView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/11/22.
//

import SwiftUI

struct EditButtonView: View {
    @State var selected: Int? = 0
    
    var body: some View {
        #if os(iOS)
        ZStack(alignment: .bottom) {
            List(selection: $selected) {
                ForEach(0..<10) { index in
                    Text("第 \(index) 行")
                        .tag(index)
                }
            }
            EditButton()
        }
        #else
        Text("EditButton 仅在 iOS 上使用。")
        #endif
        
    }
}

struct EditButtonView_Previews: PreviewProvider {
    static var previews: some View {
        EditButtonView()
    }
}
