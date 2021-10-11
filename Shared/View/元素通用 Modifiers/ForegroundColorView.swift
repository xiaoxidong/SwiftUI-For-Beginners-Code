//
//  ForegroundColorView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

// Circle
struct ForegroundColorView: View {
    var body: some View {
        Circle()
            .foregroundColor(Color.red)
            .foregroundColor(Color.light)
    }
}

// Text
/*
struct ForegroundColorView: View {
    var body: some View {
        Text("Hello World！")
            .foregroundColor(Color.light)
    }
}
*/

struct ForegroundColorView_Previews: PreviewProvider {
    static var previews: some View {
        ForegroundColorView()
    }
}
