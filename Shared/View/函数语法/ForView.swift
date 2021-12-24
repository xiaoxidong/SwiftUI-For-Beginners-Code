//
//  ForView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

struct ForView: View {
    var body: some View {
        Button("For 循环") {
            forLoop()
            arrayLoop()
        }
    }
    
    func forLoop() {
        for i in 0...5 {
            print(i)
        }
    }
    
    var array: [Int] = [1, 2, 3]

    func arrayLoop() {
        for a in array {
           print( "数字为：\(a)")
        }
    }
}

struct ForView_Previews: PreviewProvider {
    static var previews: some View {
        ForView()
    }
}


