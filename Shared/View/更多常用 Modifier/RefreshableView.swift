//
//  RefreshableView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

@available(iOS 15.0, macOS 12.0, *)
struct RefreshableView: View {
    var body: some View {
        List(0..<20) { index in
            Text("第 \(index) 行")
        }.refreshable {
            print("刷新内容！")
        }
    }
}

@available(iOS 15.0, macOS 12.0, *)
struct RefreshableView_Previews: PreviewProvider {
    static var previews: some View {
        RefreshableView()
    }
}
