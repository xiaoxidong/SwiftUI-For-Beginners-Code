//
//  GuardLetView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

struct GuardLetView: View {
    @State var number: Int? = nil
    @State var show: Bool? = true
    var body: some View {
        Text("Hello, World!")
    }
    
    func getNumber() {
        guard let a = number else { return }
        // 如果 number 不为 nil 则后面可以直接使用 a 且不需要使用 ！强制转换。
    }
    
    func add() {
        guard let number = number, let show = show else {
            return
        }
        // 处理逻辑
    }
}

struct GuardLetView_Previews: PreviewProvider {
    static var previews: some View {
        GuardLetView()
    }
}


