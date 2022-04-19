//
//  ContentView.swift
//  Copyright © www.hdjc8.com
//

import SwiftUI

struct TabBarAccessor: UIViewControllerRepresentable
{
    var callback: (UITabBar) -> Void
    private let proxyController = ViewController()

    func makeUIViewController(context: UIViewControllerRepresentableContext<TabBarAccessor>) -> UIViewController
    {
        proxyController.callback = callback
        return proxyController
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<TabBarAccessor>)
    { }

    private class ViewController: UIViewController
    {
        var callback: (UITabBar) -> Void = { _ in }

        override func viewWillAppear(_ animated: Bool)
        {
            super.viewWillAppear(animated)
            
            if let tabBar = self.tabBarController
            {
                self.callback(tabBar.tabBar)
            }
        }
    }
}

struct MyDetailView: View {
    let message: String

    var body: some View {
        Text(message)
            .font(.largeTitle)
    }
}

struct FirstView : View {
    @State private var tabBar: UITabBar! = nil
    var body: some View {
        NavigationView {
            NavigationLink(destination: MyDetailView(message: "hello")
                .onAppear { self.tabBar.isHidden = true }
                .onDisappear { self.tabBar.isHidden = false }
            ) {
                Text("Next page")
            }
            .navigationBarTitle("FirstTitle", displayMode: .inline)
        }
        .background(TabBarAccessor { tabbar in
            self.tabBar = tabbar
        })
    }
}

struct ContentView : View
{
    var body: some View
    {
        TabView
        {
            FirstView()
                .font(.system(size: 36))
                .tabItem({
                    Image(systemName: "house")
                    Text("Home") })
            
            Text("The settings page")
                .font(.system(size: 36))
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
