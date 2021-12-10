//
//  CustomModifierView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/12/10.
//

import SwiftUI

struct CustomModifierView: View {
    var body: some View {
        Text("SwiftUI For Designers")
            .navigationTitle("SwiftUI For Designers")
            .embedInNavigationView()
    }
}

extension View {
    func embedInNavigationView() -> some View {
        NavigationView {
            ScrollView {
                self
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct CustomModifierView_Previews: PreviewProvider {
    static var previews: some View {
        CustomModifierView()
    }
}
