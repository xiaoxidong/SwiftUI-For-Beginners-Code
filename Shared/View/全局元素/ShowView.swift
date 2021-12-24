//
//  ShowView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/18.
//

import SwiftUI

// 切换两个 View 的状态
//struct ShowView: View {
//    @State var show = false
//    var body: some View {
//        if show {
//            Button {
//                show = false
//            } label: {
//                Text("加载第二个页面")
//                    .frame(maxWidth: .infinity, maxHeight: .infinity)
//                    .background(Color.designred)
//                    .foregroundColor(Color.light)
//                    .edgesIgnoringSafeArea(.all)
//            }
//
//        } else {
//            Button {
//                show = true
//            } label: {
//                Text("加载第一个页面")
//                    .frame(maxWidth: .infinity, maxHeight: .infinity)
//                    .background(Color.light)
//                    .edgesIgnoringSafeArea(.all)
//            }
//        }
//    }
//}

// 设置动画和加载方式
struct ShowView: View {
    @State var show = false
    var body: some View {
        if show {
            Button {
                withAnimation(.spring()) {
                    show = false
                }
            } label: {
                Text("加载第二个页面")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.designred)
                    .foregroundColor(Color.light)
                    .edgesIgnoringSafeArea(.all)
            }
            .transition(.move(edge: .bottom))
                
        } else {
            Button {
                withAnimation(.spring()) {
                    show = true
                }
            } label: {
                Text("加载第一个页面")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.light)
                    .edgesIgnoringSafeArea(.all)
            }
            .transition(.move(edge: .top))
        }
    }
}

struct ShowView_Previews: PreviewProvider {
    static var previews: some View {
        ShowView()
    }
}
