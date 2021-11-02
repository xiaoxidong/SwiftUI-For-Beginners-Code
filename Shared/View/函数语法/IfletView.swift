//
//  IfletView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

struct IfletView: View {
    @State var number: Int? = nil
    @State var age: Int = 24
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Age: \(age)")
            HStack(spacing: 16) {
                Button("Add") {
                    getOld()
                }
                Button("Set number to 10") {
                    number = 10
                }
                Button("Set number to nil") {
                    number = nil
                }
            }
        }
    }
    
    func getOld() {
        if let newNumber = number {
            age += newNumber
            // 上面的方法也可以使用下面替代，注意使用 ！ 一定确保 number 不为 nil 否则会引起程序崩溃
//            age += number!
        } else {
            age += 1
        }
    }
}

struct IfletView_Previews: PreviewProvider {
    static var previews: some View {
        IfletView()
    }
}

