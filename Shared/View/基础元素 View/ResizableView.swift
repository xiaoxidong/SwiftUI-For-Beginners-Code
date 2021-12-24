//
//  ResizableView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/13.
//

import SwiftUI

struct ResizableView: View {
    var body: some View {
        Image("beijing")
            .resizable()
    }
}

struct ResizableView_Previews: PreviewProvider {
    static var previews: some View {
        ResizableView()
    }
}
