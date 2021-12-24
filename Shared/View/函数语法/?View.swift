//
//  ?View.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

struct _View: View {
    @State var show = true
    var body: some View {
        Button("True Or False") {
            add()
        }
    }
    
    func add() {
        show ? print("Show") : print("Hide")
    }
}

struct _View_Previews: PreviewProvider {
    static var previews: some View {
        _View()
    }
}

