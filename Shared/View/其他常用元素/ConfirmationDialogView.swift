//
//  ConfirmationDialogView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/23.
//

import SwiftUI

struct ConfirmationDialogView: View {
    @State var show = false
    
    var body: some View {
        if #available(iOS 15.0, macOS 12.0, *) {
            Button("show") {
                show.toggle()
            }.confirmationDialog("确认删除内容？", isPresented: $show, titleVisibility: .visible) {
                Button(role: .destructive) {
                    
                } label: {
                    Text("删除")
                }
                Button(role: .cancel) {
                    
                } label: {
                    Text("再想想")
                }
            }
        } else {
            Text("confirmationDialog 需要在 iOS 15.0, macOS 12.0 上使用。")
        }
    }
}

struct ConfirmationDialogView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationDialogView()
    }
}
