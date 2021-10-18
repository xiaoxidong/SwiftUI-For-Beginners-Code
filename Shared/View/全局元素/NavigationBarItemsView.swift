//
//  NavigationBarItemsView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/18.
//

import SwiftUI

//1. 设置导航栏左右操作按钮
struct NavigationBarItemsView: View {
    var body: some View {
        NavigationView {
            Color.red
                .navigationTitle("Home")
                .navigationBarItems(leading:
                                        Button(action: {

                                        }, label: {
                                            Image(systemName: "pencil.circle.fill")
                                        })
                                    , trailing:
                                        Button(action: {

                                        }, label: {
                                            Text("设置")
                                                .font(.system(size: 15, weight: .bold))
                                                .foregroundColor(.red)
                                        })
                )
        }
    }
}


// 2. 单独设置左右侧
/*
struct NavigationBarItemsView: View {
    var body: some View {
        NavigationView {
            Color.red
                .navigationTitle("Home")
                .navigationBarItems(leading: leading)
        }
    }
    
    var leading: some View {
        HStack {
            Button(action: {

            }, label: {
                Image(systemName: "pencil.circle.fill")
            })
            Button(action: {

            }, label: {
                Image(systemName: "folder.fill.badge.person.crop")
                    .foregroundColor(.red)
            })
        }
    }
}
*/

struct NavigationBarItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarItemsView()
    }
}
