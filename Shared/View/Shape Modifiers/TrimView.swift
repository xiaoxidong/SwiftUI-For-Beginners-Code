//
//  TrimView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

struct TrimView: View {
    var body: some View {
        Circle()
            .trim(from: 0, to: 0.9)
            .stroke(Color.red, lineWidth: 10)
    }
}

struct TrimView_Previews: PreviewProvider {
    static var previews: some View {
        TrimView()
    }
}
