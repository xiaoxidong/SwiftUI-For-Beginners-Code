//
//  ShadowView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

struct ShadowView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12, style: .continuous)
            .fill(Color.white)
            .frame(width: 200, height: 100)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 4)
    }
}

struct ShadowView_Previews: PreviewProvider {
    static var previews: some View {
        ShadowView()
    }
}
