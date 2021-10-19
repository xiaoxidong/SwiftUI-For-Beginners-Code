//
//  DEBUGView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/19.
//

import SwiftUI

struct DEBUGView: View {
    var body: some View {
        Button {
            #if DEBUG
            // DEBUG 逻辑处理
            #else
            // 用户使用逻辑
            #endif
        } label: {
            Text("知道了")
        }
    }
}


struct DEBUGView_Previews: PreviewProvider {
    static var previews: some View {
        DEBUGView()
    }
}
