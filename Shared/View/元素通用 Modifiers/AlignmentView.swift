//
//  AlignmentView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

struct AlignmentView: View {
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .frame(width: 200, height: 200, alignment: .topLeading)
            .background(Color.designred)
    }
}

struct AlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentView()
    }
}
