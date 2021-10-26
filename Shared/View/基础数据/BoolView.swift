//
//  BoolView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/25.
//

import SwiftUI

struct BoolView: View {
    @State var show: Bool = true
    var body: some View {
        Button {
            show.toggle()
            toggleShow()
        } label: {
            Text(show ? "显示" : "隐藏")
        }
    }
    
    func toggleShow() {
        var bool: Bool = true
        bool.toggle()
        print(bool)
        // false
        bool.toggle()
        print(bool)
        // true
    }
}

struct BoolView_Previews: PreviewProvider {
    static var previews: some View {
        BoolView()
    }
}
