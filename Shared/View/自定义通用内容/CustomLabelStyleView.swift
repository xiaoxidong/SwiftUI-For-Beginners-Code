//
//  CustomLabelStyleView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/12/10.
//

import SwiftUI

struct CustomLabelStyleView: View {
    var body: some View {
        Label("SwiftUI For Beginners", systemImage: "scribble")
            .labelStyle(IconLabelStyle())
    }
}

struct IconLabelStyle: LabelStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        VStack(spacing: 8) {
            configuration.icon
                .font(.system(size: 20, weight: .bold))
            configuration.title
                .font(.system(size: 14, weight: .medium))
        }
        .padding()
        .background(Capsule().fill(Color.light))
    }
}

struct CustomLabelStyleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomLabelStyleView()
    }
}
