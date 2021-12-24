//
//  BaselineOffsetView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/13.
//

import SwiftUI

struct BaselineOffsetView: View {
    var body: some View {
        Text("Hello")
            .baselineOffset(4)
        + Text(", World!")
    }
}

struct BaselineOffsetView_Previews: PreviewProvider {
    static var previews: some View {
        BaselineOffsetView()
    }
}
