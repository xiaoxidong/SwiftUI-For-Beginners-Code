//
//  EnvironmentObjectView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/29.
//

import SwiftUI
class DesignUser: ObservableObject {
    @Published var number: Int = 0
}
struct EnvironmentObjectView: View {
    @StateObject var user = DesignUser()
    @State var show = false
    var body: some View {
        VStack(spacing: 16) {
            Text("Number: \(user.number)")
            Button("下一个页面") {
                show.toggle()
            }
        }
        .sheet(isPresented: $show) {
            SecondView()
        }
        .environmentObject(user)
    }
}
struct SecondView: View {
    @State var show = false
    var body: some View {
        Button("下一个页面") {
            show.toggle()
        }.sheet(isPresented: $show) {
            ThirdView()
        }
    }
}

struct ThirdView: View {
    @EnvironmentObject var user: DesignUser
    var body: some View {
        Button("增加数字") {
            user.number += 1
        }
    }
}

struct EnvironmentObjectView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectView()
    }
}
