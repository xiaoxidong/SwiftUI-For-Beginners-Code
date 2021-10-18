//
//  NavigationBarColorModifier.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/18.
//

import SwiftUI

struct NavigationBarColorModifier: ViewModifier {
        
    var backgroundColor: UIColor
    var titleColor: UIColor
    
    init(backgroundColor: Color, titleColor: Color) {
        self.backgroundColor = UIColor(backgroundColor)
        self.titleColor = UIColor(titleColor)
        
        UINavigationBar.appearance().backgroundColor = self.backgroundColor
        UINavigationBar.appearance().barTintColor = self.backgroundColor
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: self.titleColor]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: self.titleColor]
    }
    
    func body(content: Content) -> some View {
        ZStack{
            content
            VStack {
                GeometryReader { geometry in
                    Color(self.backgroundColor)
                        .frame(height: geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)
                    Spacer()
                }
            }
        }
    }
}

extension View {
 
    func navigationBarColor(backgroundColor: Color, titleColor: Color) -> some View {
        self.modifier(NavigationBarColorModifier(backgroundColor: backgroundColor, titleColor: titleColor))
    }

}
