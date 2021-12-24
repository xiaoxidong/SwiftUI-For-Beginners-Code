//
//  IfView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

struct IfView: View {
    @State var age = 24
    var body: some View {
        Button("If") {
            
        }
    }
    
    func ifAge() {
        if age > 20 {
            age += 1
        }
    }
    func ifElse() {
        if age > 24 {
            age -= 2
        } else {
            ifAge()
        }
    }
    
    func ifElseif() {
        if age > 20 {
            age += 1
        } else if age > 10 {
            age += 2
        } else {
            age += 3
        }
    }
    
    func ifLoop() {
        if age > 20 {
            if age < 36 {
                age += 6
            } else {
                age += 4
            }
        } else {
            age += 8
        }
    }
    
    func ifFaill() {
        if age > 20 {
            age += 10
        } else if age > 10 {
            age += 8
        }
    }
}

struct IfView_Previews: PreviewProvider {
    static var previews: some View {
        IfView()
    }
}



