//
//  PaddingView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

struct PaddingView: View {
    var body: some View {
        Circle()
            .frame(width: 50, height: 50)
            .padding(.all, 16)
            .background(Color.yellow)
    }
}

struct PaddingView_Previews: PreviewProvider {
    static var previews: some View {
        PaddingView()
    }
}
