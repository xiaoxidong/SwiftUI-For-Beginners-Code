//
//  OpacityView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

struct OpacityView: View {
    var body: some View {
        VStack {
            Image("beijing")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("北京故宫")
                .font(.caption)
        }.opacity(0.5)
    }
}

struct OpacityView_Previews: PreviewProvider {
    static var previews: some View {
        OpacityView()
    }
}
