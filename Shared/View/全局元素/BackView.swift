//
//  BackView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/18.
//

import SwiftUI

struct BackView: View {
    var body: some View {
        NavigationView {
            #if os(iOS)
            NavigationLink("加载新页面") {
                // 修改加载的页面查看不同
                NewPageOne()
            }.navigationTitle("Home")
            #else
            NavigationLink("加载新页面", destination: NewPageOne()).navigationTitle("Home")
            #endif
        }
    }
    
   
    struct NewPageOne: View {
        @Environment(\.presentationMode) var mode
        var body: some View {
            Color.designred
                .onTapGesture {
                    mode.wrappedValue.dismiss()
                }
        }
    }
    
//    struct NewPageTwo: View {
//        @Environment(\.dismiss) var dismiss
//        @Environment(\.isPresented) var isPresented
//        var body: some View {
//            if isPresented {
//                Color.light
//                    .onTapGesture {
//                        dismiss()
//                    }
//            } else {
//                Color.light
//            }
//        }
//    }
}



struct BackView_Previews: PreviewProvider {
    static var previews: some View {
        BackView()
    }
}
