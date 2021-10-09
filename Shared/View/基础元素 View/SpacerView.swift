//
//  SpacerView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/9.
//

import SwiftUI

// frame 方式
/*
struct SpacerView: View {
    var body: some View {
        HStack {
            Text("推荐美食")
            Button {
                
            } label: {
                HStack {
                    Text("更多")
                    Image(systemName: "chevron.forward")
                }
            }.frame(maxWidth: .infinity, alignment: .trailing)
        }.padding(.horizontal)
    }
}
*/

// Spacer
struct SpacerView: View {
    var body: some View {
        HStack {
            Text("推荐美食")
            Spacer()
            Button {
                
            } label: {
                HStack {
                    Text("更多")
                    Image(systemName: "chevron.forward")
                }
            }
        }.padding(.horizontal)
    }
}


struct SpacerView_Previews: PreviewProvider {
    static var previews: some View {
        SpacerView()
    }
}
