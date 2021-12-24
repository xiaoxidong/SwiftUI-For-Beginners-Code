//
//  StateView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/29.
//

import SwiftUI

//State
struct StateView: View {
    @State var show: Bool = true
    var body: some View {
        Button {
            show.toggle()
        } label: {
            Text(show ? "Show" : "Hide")
        }
    }
}

// 更好的理解 @State
/*
struct StateView: View {
    @State var number: Int = 6
    var body: some View {
        VStack {
            Button {
                number += 1
            } label: {
                Text("数字 +1")
            }
            StateDetailView(number: number)
        }
    }
    
    struct StateDetailView: View {
        var number: Int
        // 当我们给 number 增加了 @State 之后 View 不会更新了是为什么呢？
    //    @State var number: Int
        var body: some View {
            Text("当前数字: \(number)")
        }
    }
}
*/

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
