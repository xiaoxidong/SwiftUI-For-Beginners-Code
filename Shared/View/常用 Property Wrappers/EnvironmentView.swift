//
//  EnvironmentView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/29.
//

import SwiftUI

struct EnvironmentView: View {
    @State var show = false
    var body: some View {
        Button("Show") {
            show.toggle()
        }.sheet(isPresented: $show) {
            EnvironmentDetailView()
        }
    }
}

struct EnvironmentDetailView: View {
    @Environment(\.presentationMode) var mode
    var body: some View {
        Button("Dismiss") {
            mode.wrappedValue.dismiss()
        }
    }
}

struct EnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentView()
    }
}
