//
//  DividerView.swift
//  SwiftUI For Designers
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

struct DividerView: View {
    var body: some View {
        HStack {
            HStack {
                Divider()
            }.frame(maxWidth: .infinity)
            
            VStack {
                Divider()
            }
        }
    }
}

struct DividerView_Previews: PreviewProvider {
    static var previews: some View {
        DividerView()
    }
}
