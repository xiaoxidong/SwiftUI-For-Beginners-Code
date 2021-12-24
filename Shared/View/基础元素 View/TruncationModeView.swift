//
//  TruncationModeView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/23.
//

import SwiftUI

struct TruncationModeView: View {
    var body: some View {
        Text("SwiftUI For Beginners")
            .frame(width: 100)
            .lineLimit(1)
            .truncationMode(.middle)
    }
}

struct TruncationModeView_Previews: PreviewProvider {
    static var previews: some View {
        TruncationModeView()
    }
}
