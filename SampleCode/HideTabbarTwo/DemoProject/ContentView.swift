//
//  ContentView.swift
//  Copyright © www.hdjc8.com
//

import SwiftUI

struct ContentView : View {
    @EnvironmentObject private var tabbarVM: TabbarViewModel
    
    var body: some View {
        TabView {
            FirstView()
                .font(.system(size: 36))
                .tabItem({
                    Image(systemName: "house")
                    Text("Home") })
            
            Text("The settings page")
                .font(.system(size: 36))
                .onTapGesture {
                    self.tabbarVM.tabBar.isHidden.toggle()
                    print("------")
                }
                .tabItem({
                    Image(systemName: "gear")
                    Text("Settings")
                })
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider
{
    static var previews: some View
    {
        ContentView()
    }
}
#endif
