//
//  NavigationBarTitleView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/18.
//

import SwiftUI

// 1. 文字设置标题
struct NavigationBarTitleView: View {
    var body: some View {
        NavigationView {
            Color.red
                .navigationTitle("Home")
        }
    }
}

// 2. 使用 Text View 设置标题
/*
struct NavigationBarTitleView: View {
    var body: some View {
        NavigationView {
            Color.red
                .navigationTitle(Text("Home"))
        }
    }
}
*/

// 3. 使用本地化的字符串
/*
struct NavigationBarTitleView: View {
    var body: some View {
        NavigationView {
            Color.red
                .navigationTitle(LocalizedStringKey("Home"))
        }
    }
}
*/


struct NavigationBarTitleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarTitleView()
    }
}
