//
//  NavigationViewStyleView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/18.
//

import SwiftUI

//struct NavigationViewStyleView: View {
//    var body: some View {
//        NavigationView {
//            NavigationLink("打开新的页面") {
//                Text("这是一个新的页面")
//            }
//
//            Text("没有选择任何内容")
//        }
////        .navigationViewStyle(DefaultNavigationViewStyle())
//        .navigationViewStyle(StackNavigationViewStyle())
////        .navigationViewStyle(.columns)
//    }
//}

struct NavigationViewStyleView: View {
    var body: some View {
        if #available(iOS 15.0, *) {
            NavigationView {
                VStack {
                    Text("这是一个新的页面")
                    Text("这是一个新的页面")
                }
                Text("没有选择任何内容")
            }
            .navigationViewStyle(.columns)
        } else {
            // Fallback on earlier versions
        }
    }
}

struct NavigationViewStyleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewStyleView()
    }
}
