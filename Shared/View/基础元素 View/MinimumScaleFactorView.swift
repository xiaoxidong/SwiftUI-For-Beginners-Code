//
//  MinimumScaleFactorView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/11/23.
//

import SwiftUI

struct MinimumScaleFactorView: View {
    @State var width: CGFloat = 100
    var body: some View {
        VStack(spacing: 16) {
            Text("SwiftUI For Designers")
                .lineLimit(1)
                .frame(width: width)
                .minimumScaleFactor(0.5)
            Slider(value: $width, in: 50...200, step: 1) {
                
            }
        }
    }
}

struct MinimumScaleFactorView_Previews: PreviewProvider {
    static var previews: some View {
        MinimumScaleFactorView()
    }
}
