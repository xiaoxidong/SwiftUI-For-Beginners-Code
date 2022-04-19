//
//  FirstView.swift
//  DemoProject
//
//  Created by XiaoDong Yuan on 19/4/2022.
//  Copyright © 2022 www.coolketang.com. All rights reserved.
//

import SwiftUI

struct FirstView : View {
    @EnvironmentObject private var tabbarVM: TabbarViewModel
    var body: some View {
        NavigationView {
            NavigationLink(destination: MyDetailView(message: "hello")
                .onAppear { self.tabbarVM.tabBar.isHidden = true }
                .onDisappear { self.tabbarVM.tabBar.isHidden = false }
            ) {
                Text("Next page")
            }
            .navigationBarTitle("FirstTitle", displayMode: .inline)
        }
        .background(TabBarAccessor { tabbar in
            self.tabbarVM.tabBar = tabbar
        })
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
