//
//  KerningView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/13.
//

import SwiftUI

struct KerningView: View {
    var body: some View {
        Text("Hello, World!")
            .kerning(6)
    }
}

struct KerningView_Previews: PreviewProvider {
    static var previews: some View {
        KerningView()
    }
}
