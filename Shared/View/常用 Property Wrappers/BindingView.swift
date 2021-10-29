//
//  BindingView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/29.
//

import SwiftUI

struct BindingView: View {
    @State var number: Int = 0
    @State var show = false
    var body: some View {
        Button {
            show.toggle()
        } label: {
            Text("Number is: \(number)")
        }.sheet(isPresented: $show) {
            DetailView(number: $number)
        }
    }
    
    struct DetailView: View {
        @Binding var number: Int
        var body: some View {
            Button {
                number += 1
            } label: {
                Text("Number is: \(number)")
            }

        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}
