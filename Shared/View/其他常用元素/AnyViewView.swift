//
//  AnyViewView.swift
//  SwiftUI For Beginners
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

struct AnyViewView: View {
    @State var show = false
    var body: some View {
        VStack {
            show ? AnyView(Text("Show")) : AnyView(erasing: Circle().frame(width: 26, height: 26))
            Button("切换显示内容") {
                show.toggle()
            }
        }
    }
}

struct AnyViewView_Previews: PreviewProvider {
    static var previews: some View {
        AnyViewView()
    }
}
