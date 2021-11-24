//
//  CornerRadiusView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

struct CornerRadiusView: View {
    var body: some View {
        Rectangle()
            .frame(width: 100, height: 80)
            .cornerRadius(12, antialiased: true)
    }
}

struct CornerRadiusView_Previews: PreviewProvider {
    static var previews: some View {
        CornerRadiusView()
    }
}
