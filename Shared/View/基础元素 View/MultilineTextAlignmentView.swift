//
//  MultilineTextAlignmentView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/23.
//

import SwiftUI

struct MultilineTextAlignmentView: View {
    var body: some View {
        Text("SwiftUI For Beginners is an App that can teach your develop skills you need to build an Apple App.")
            .frame(width: 200)
            .multilineTextAlignment(.center)
    }
}

struct MultilineTextAlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        MultilineTextAlignmentView()
    }
}
