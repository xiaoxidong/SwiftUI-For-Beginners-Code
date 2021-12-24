//
//  BreakAndContinueView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

struct BreakAndContinueView: View {
    
    var body: some View {
        Button("BreakAndContinue") {
            loopContinue()
            loopBreak()
        }
    }
    
    @State var number: Int = 5
    func loopContinue() {
        for i in 0...5 {
            if i == 2 {
                continue
            }
            print(i)
        }
    }
    
    func loopBreak() {
        for i in 0...5 {
            if i == 2 {
                break
            }
            print(i)
        }
    }
}

struct BreakAndContinueView_Previews: PreviewProvider {
    static var previews: some View {
        BreakAndContinueView()
    }
}


