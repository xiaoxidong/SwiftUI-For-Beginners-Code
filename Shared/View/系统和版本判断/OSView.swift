//
//  OSView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/18.
//

import SwiftUI

struct OSView: View {
    var body: some View {
        #if os(macOS)
        Text("Mac")
        #else
        Text("Not Mac")
        #endif
    }
}

struct OSView_Previews: PreviewProvider {
    static var previews: some View {
        OSView()
    }
}
