//
//  ContentView.swift
//  Shared
//
//  Created by XiaoDong Yuan on 2021/10/8.
//

import SwiftUI

// 显示两个预览，一般不这样写
struct HomeView: View {
    var body: some View {
        HomeCellView()
        HomeCellView()
    }
}

// body 只有一个 View
/*
struct HomeView: View {
    var body: some View {
        VStack {
            NewsCellView()
            NewsCellView()
        }
    }
}
*/

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
