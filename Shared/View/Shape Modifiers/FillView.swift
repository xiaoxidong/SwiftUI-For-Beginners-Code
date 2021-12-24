//
//  FillView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

struct FillView: View {
    var body: some View {
        Circle()
            .fill(Color.red)
            .frame(width: 100, height: 100)
    }
}

struct FillView_Previews: PreviewProvider {
    static var previews: some View {
        FillView()
    }
}
