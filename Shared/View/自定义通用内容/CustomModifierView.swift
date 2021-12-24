//
//  CustomModifierView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/12/10.
//

import SwiftUI

struct CustomModifierView: View {
    var body: some View {
        Text("SwiftUI For Beginners")
            .navigationTitle("SwiftUI For Beginners")
            .embedInNavigationView()
    }
}

extension View {
    func embedInNavigationView() -> some View {
        #if os(iOS)
        NavigationView {
            ScrollView {
                self
            }
        }.navigationViewStyle(StackNavigationViewStyle())
        #else
        NavigationView {
            ScrollView {
                self
            }
        }
        #endif
    }
}

struct CustomModifierView_Previews: PreviewProvider {
    static var previews: some View {
        CustomModifierView()
    }
}
