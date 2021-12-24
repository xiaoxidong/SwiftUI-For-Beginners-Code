//
//  TabBarColorModifier.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/18.
//

import SwiftUI

struct TabBarColorModifier: ViewModifier {
        
    var backgroundColor: UIColor
    var titleColor: Color
    
    init(backgroundColor: Color, titleColor: Color) {
        self.backgroundColor = UIColor(backgroundColor)
        self.titleColor = titleColor
        
        UITabBar.appearance().barTintColor = self.backgroundColor
        UITabBar.appearance().tintColor = self.backgroundColor
    }
    
    func body(content: Content) -> some View {
        content
            .accentColor(titleColor)
    }
}

extension View {
 
    func tabBarColor(backgroundColor: Color, titleColor: Color) -> some View {
        self.modifier(TabBarColorModifier(backgroundColor: backgroundColor, titleColor: titleColor))
    }

}
