//
//  OnHoverView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

struct OnHoverView: View {
    @State var isHover = false
    var body: some View {
        Rectangle()
            .frame(width: 100, height: 100)
            .foregroundColor(isHover ? Color.purple : Color.pink)
            .onHover { hover in
                self.isHover = hover
            }
    }
}

struct OnHoverView_Previews: PreviewProvider {
    static var previews: some View {
        OnHoverView()
    }
}
