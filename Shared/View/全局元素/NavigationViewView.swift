//
//  NavigationViewView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/18.
//

import SwiftUI

// 1. NavigationView
struct NavigationViewView: View {
    var body: some View {
        NavigationView {
            Color.red
        }
    }
}

// 2. .navigationBarHidden
/*
struct NavigationViewView: View {
    var body: some View {
        NavigationView {
            Color.red
                .navigationBarHidden(true)
        }
    }
}
*/

// 3. .navigationBarTitleDisplayMode
/*
struct NavigationViewView: View {
    var body: some View {
        NavigationView {
            Color.red
                .navigationBarTitleDisplayMode(.large)
                .navigationTitle(Text("Home"))
        }
    }
}
*/

// 4. .navigationBarBackButtonHidden
/*
struct NavigationViewView: View {
    var body: some View {
        NavigationView {
            Color.red
                .navigationBarBackButtonHidden(true)
        }
    }
}
*/

// 5. 修改导航栏背景色和文字颜色
/*
struct NavigationViewView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.light
                    .edgesIgnoringSafeArea(.all)
                // 设置显示内容
                Color.designred
            }
                .navigationTitle("Home")
        }
        .onAppear {
            UINavigationBar.appearance().backgroundColor = UIColor(Color.light)
            UINavigationBar.appearance().barTintColor = UIColor(Color.light)
            // 如果 displayMode = .large
            UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color.designred)]

            // 如果 displayMode = .inline
            UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color.designred)]
        }
    }
}
*/

// 使用 ViewModifier 文件夹下 NavigationBarColorModifier 的 Modifier
/*
struct NavigationViewView: View {
    var body: some View {
        NavigationView {
            Text("Home")
                .navigationTitle("Home")
                .navigationBarColor(backgroundColor: Color.light, titleColor: Color.designred)
        }
    }
}
*/


struct NavigationViewView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewView()
    }
}
