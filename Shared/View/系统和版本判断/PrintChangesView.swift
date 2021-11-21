//
//  PrintChangesView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/11/21.
//

import SwiftUI

struct PrintChangesView: View {
    var body: some View {
        if #available(iOS 15.0, macOS 12.0, *) {
            Self._printChanges()
        } else {
            // Fallback on earlier versions
        }
        return Text("Hello, World!")
    }
}

struct PrintChangesView_Previews: PreviewProvider {
    static var previews: some View {
        PrintChangesView()
    }
}
