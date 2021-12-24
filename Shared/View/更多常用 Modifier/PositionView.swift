//
//  PositionView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

struct PositionView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("SwiftUI For Beginners")
                .position(x: 0, y: 0)
                .background(Color.yellow)
            Rectangle()
                .frame(height: 30)
        }
    }
}

struct PositionView_Previews: PreviewProvider {
    static var previews: some View {
        PositionView()
    }
}
