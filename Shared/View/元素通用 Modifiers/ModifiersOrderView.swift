//
//  ModifiersOrderView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

struct ModifiersOrderView: View {
    var body: some View {
        Circle()
            .frame(width: 50, height: 50)
            .padding(.all, 16)
            .background(Color.yellow)
            .background(Color.green)
    }
}

// 修改背景色和 padding 的顺序
/*
struct ModifiersOrderView: View {
    var body: some View {
        Circle()
            .frame(width: 50, height: 50)
            .background(Color.yellow)
            .padding(.all, 16)
            .background(Color.green)
    }
}
*/


struct ModifiersOrderView_Previews: PreviewProvider {
    static var previews: some View {
        ModifiersOrderView()
    }
}
