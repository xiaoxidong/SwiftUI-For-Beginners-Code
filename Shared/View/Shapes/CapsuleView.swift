//
//  CapsuleView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

// 1. 直接初始化
struct CapsuleView: View {
    var body: some View {
        Capsule()
    }
}

// 2. 圆角样式初始化
/*
struct CapsuleView: View {
    var body: some View {
        Capsule(style: .continuous)
    }
}
*/

struct CapsuleView_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleView()
    }
}
