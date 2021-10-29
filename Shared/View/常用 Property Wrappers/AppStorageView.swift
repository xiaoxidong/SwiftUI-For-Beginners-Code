//
//  AppStorageView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/29.
//

import SwiftUI

struct AppStorageView: View {
    @AppStorage("number") var number: Int = 0
    var body: some View {
        Button("Number: \(number)") {
            number += 1
        }
    }
}


// 更新 View
/*
struct AppStorageView: View {
    @AppStorage("number") var number: Int = 0
    @State var show = false
    var body: some View {
        Button("Number: \(number)") {
            show.toggle()
        }.sheet(isPresented: $show) {
            AppStorageSecondView()
        }
    }
}

struct AppStorageSecondView: View {
    @AppStorage("number") var number: Int = 0
    var body: some View {
        Button("Number: \(number)") {
            number += 1
        }
    }
}
*/

struct AppStorageView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageView()
    }
}
