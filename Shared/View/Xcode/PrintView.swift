//
//  PrintView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/19.
//

import SwiftUI

// print
//struct PrintView: View {
//    var body: some View {
//        Color.red
//            .frame(width: 50, height: 50)
//            .padding(.all, 16)
//            .onTapGesture {
//                print("你点击了啊！")
//            }
//    }
//}

// 打印一个类
struct PrintView: View {
    struct People {
        var name: String
    }
    @State var people = People(name: "Xiaodong")
    var body: some View {
        Color.red
            .frame(width: 50, height: 50)
            .padding(.all, 16)
            .onTapGesture {
                print(people)
            }
    }
}

struct PrintView_Previews: PreviewProvider {
    static var previews: some View {
        PrintView()
    }
}
