//
//  IgnoresSafeAreaView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

// 1. edgesIgnoringSafeArea
struct IgnoresSafeAreaView: View {
    var body: some View {
        Color.red
            .edgesIgnoringSafeArea(.top)
    }
}

// 2. ignoresSafeArea
/*
struct IgnoresSafeAreaView: View {
    var body: some View {
        Color.red
            .ignoresSafeArea(.all, edges: .top)
    }
}
*/


struct IgnoresSafeAreaView_Previews: PreviewProvider {
    static var previews: some View {
        IgnoresSafeAreaView()
    }
}
