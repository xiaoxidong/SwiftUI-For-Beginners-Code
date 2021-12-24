//
//  ScrollViewView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

struct ScrollViewView: View {
    var colors = [Color.red, Color.yellow, Color.green]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack {
                ForEach(1..<20) {index in
                    ZStack {
                        colors.randomElement()
                        Text("\(index)")
                    }.frame(width: 50, height: 30)
                }
            }
        }
    }
}

struct ScrollViewView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewView()
    }
}
