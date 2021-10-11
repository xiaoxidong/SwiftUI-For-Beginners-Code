//
//  BackgroundView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .background(Color.red)
            .frame(width: 200, height: 200, alignment: .topLeading)
            .background(Color.yellow)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
