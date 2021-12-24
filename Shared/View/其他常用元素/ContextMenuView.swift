//
//  ContextMenuView.swift
//  SwiftUI For Beginners
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

struct ContextMenuView: View {
    var body: some View {
        Group {
            #if os(macOS)
            Text("点击右键")
            #else
            Text("长按文字")
            #endif
        }
        .padding()
        .foregroundColor(.white)
        .background(Color.red)
        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
        .contextMenu {
            Button("Save") {
                print("Save")
            }
            Button {
                print("Setting")
            } label: {
                Label("Setting", systemImage: "gear")
            }
            Button {
                print("Circle")
            } label: {
                Circle()
            }
        }
    }
}

struct ContextMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuView()
    }
}
