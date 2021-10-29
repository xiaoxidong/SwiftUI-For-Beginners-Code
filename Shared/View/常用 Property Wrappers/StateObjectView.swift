//
//  StateObjectView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/29.
//

import SwiftUI

struct StateObjectView: View {
    @StateObject var user = PokeUser()
    @State var show = false
    var body: some View {
        Button {
            show.toggle()
        } label: {
            VStack(spacing: 16) {
                Text("Show")
                Text("Number: \(user.number)")
            }
        }.sheet(isPresented: $show) {
            StateObjectDetailView(user: user)
        }
    }
}

struct StateObjectDetailView: View {
    @ObservedObject var user: PokeUser
    var body: some View {
        Button {
            user.number += 1
        } label: {
            Text("Number +1, Number: \(user.number)")
        }
    }
}

class PokeUser: ObservableObject {
    @Published var number = 0
}

struct StateObjectView_Previews: PreviewProvider {
    static var previews: some View {
        StateObjectView()
    }
}
