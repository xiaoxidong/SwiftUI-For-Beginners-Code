//
//  ReturnView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

struct ReturnView: View {
    var body: some View {
        Button("Return") {
            add()
        }
    }
    
    func number(_ number: Int) -> Int {
        if number < 10 {
            return number * number
        } else if number >= 10 {
            return number
        } else {
            return 10
        }
    }
    
    @State var age: Int = 8
    func add() {
        if age > 16 {
            print(age)
            return
        } else {
            age += 1
            add()
        }
    }
}

struct ReturnView_Previews: PreviewProvider {
    static var previews: some View {
        ReturnView()
    }
}

