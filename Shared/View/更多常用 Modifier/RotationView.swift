//
//  RotationView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

// rotationEffect
struct RotationView: View {
    var body: some View {
        Text("SwiftUI For Beginners")
            .foregroundColor(Color.white)
            .padding(8)
            .background(Color.purple)
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .rotationEffect(Angle(degrees: 30), anchor: .topLeading)
    }
}

// rotation3DEffect
/*
struct RotationView: View {
    var body: some View {
        Text("SwiftUI For Beginners")
            .foregroundColor(Color.white)
            .padding(8)
            .background(Color.purple)
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .rotation3DEffect(Angle(degrees: 30), axis: (x: 2, y: 0, z: 6), anchor: .center, anchorZ: 6, perspective: 4)
    }
}
*/

struct RotationView_Previews: PreviewProvider {
    static var previews: some View {
        RotationView()
    }
}
