//
//  StatefulTabView.swift
//
//
//  Created by Nicholas Bellucci on 5/10/20.
//

import SwiftUI

public struct StatefulTabView: View {
    internal var viewControllers: [UIHostingController<AnyView>] = []
    internal var tabBarItems: [Tab] = []

    internal var barTintColor: UIColor? = nil
    internal var unselectedItemTintColor: UIColor? = nil
    internal var backgroundColor: UIColor? = nil
    internal var tabBarConfiguration: TabBarBackgroundConfiguration? = nil
    
    @State private var stateIndex: Int = 0
    @Binding private var bindableIndex: Int
    @Binding var tabbarisHidden: Bool

    private var useBindableIndex: Bool = false
    
    public init(selectedIndex: Binding<Int>? = nil, tabbarisHidden: Binding<Bool>, @TabBuilder _ content: () -> [Tab]) {
        if let selectedIndex = selectedIndex {
            _bindableIndex = selectedIndex
            useBindableIndex = true
        } else {
            _bindableIndex = .constant(0)
            useBindableIndex = false
        }
        
        _tabbarisHidden = tabbarisHidden
        
        configureViewControllers(with: content())
    }

    public var body: some View {
        TabBarController(controllers: viewControllers,
                         tabBarItems: tabBarItems,
                         barTintColor: barTintColor,
                         unselectedItemTintColor: unselectedItemTintColor,
                         backgroundColor: backgroundColor,
                         tabBarConfiguration: tabBarConfiguration,
                         selectedIndex: useBindableIndex ? $bindableIndex : $stateIndex,
                         tabbarisHidden: $tabbarisHidden
        )
            .edgesIgnoringSafeArea(.all)
    }
}

private extension StatefulTabView {
    mutating func configureViewControllers(with tabs: [Tab]) {
        tabs.forEach {
            let tabController = UIHostingController(rootView: $0.view)
            tabController.tabBarItem = $0.barItem
            tabBarItems.append($0)
            viewControllers.append(tabController)
        }
    }
}

@_functionBuilder
public struct TabBuilder {
    public static func buildBlock(_ children: Tab...) -> [Tab] {
        children
    }

    public static func buildBlock(_ component: Tab) -> [Tab] {
        [component]
    }
}
