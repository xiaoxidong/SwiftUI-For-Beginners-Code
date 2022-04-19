//
//  TabBarAccessor.swift
//  DemoProject
//
//  Created by XiaoDong Yuan on 19/4/2022.
//  Copyright © 2022 www.coolketang.com. All rights reserved.
//

import SwiftUI

struct TabBarAccessor: UIViewControllerRepresentable {
    var callback: (UITabBar) -> Void
    private let proxyController = ViewController()

    func makeUIViewController(context: UIViewControllerRepresentableContext<TabBarAccessor>) -> UIViewController {
        proxyController.callback = callback
        return proxyController
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<TabBarAccessor>)
    { }

    private class ViewController: UIViewController {
        var callback: (UITabBar) -> Void = { _ in }

        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            if let tabBar = self.tabBarController
            {
                self.callback(tabBar.tabBar)
            }
        }
    }
}
