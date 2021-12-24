//
//  ButtonStyleView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/12/10.
//

import SwiftUI

struct CustomButtonStyleView: View {
    var body: some View {
        Button("SwiftUI For Beginners") {
            
        }.buttonStyle(TapButtonStyle())
    }
}

struct TapButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.black)
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .background(Capsule().fill(Color.light))
            .scaleEffect(configuration.isPressed ? 0.8 : 1)
            .animation(.spring())
    }
}

struct CustomButtonStyleView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleView()
    }
}
