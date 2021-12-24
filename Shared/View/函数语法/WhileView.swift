//
//  WhileView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

struct WhileView: View {
    var body: some View {
        Button("While") {
            reduce()
        }
    }
    @State var number = 5
    func reduce() {
        while number > 0 {
            print(number)
            number -= 1
        }
    }
}

struct WhileView_Previews: PreviewProvider {
    static var previews: some View {
        WhileView()
    }
}

