//
//  TabViewView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/18.
//

import SwiftUI

// TabView
//struct TabViewView: View {
//    var body: some View {
//        TabView {
//            NavigationView {
//                Text("HomeView")
//                    .navigationTitle("Home")
//            }.navigationViewStyle(StackNavigationViewStyle())
//            .tabItem {
//                Label("红色", systemImage: "book.circle.fill")
//            }
//
//            Color.purple
//                .edgesIgnoringSafeArea(.top)
//                .tabItem {
//                    VStack {
//                        Text("紫色")
//                        Image(systemName: "bookmark.circle.fill")
//                    }
//                }
//        }
//    }
//}

// TabBar Color
struct TabViewView: View {
    var body: some View {
        TabView {
            NavigationView {
                Text("HomeView")
                    .navigationTitle("Home")
            }.navigationViewStyle(StackNavigationViewStyle())
            .tabItem {
                Label("红色", systemImage: "book.circle.fill")
            }
            .tag(1)
            
            Color.purple
                .edgesIgnoringSafeArea(.top)
                .tabItem {
                    VStack {
                        Text("紫色")
                        Image(systemName: "bookmark.circle.fill")
                    }
                }
                .tag(2)
        }//.tabBarColor(backgroundColor: .light, titleColor: .designred)
        .accentColor(.designred)
    }
}

struct TabViewView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewView()
    }
}
