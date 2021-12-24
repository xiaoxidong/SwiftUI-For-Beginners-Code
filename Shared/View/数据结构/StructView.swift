//
//  StructView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/26.
//

import SwiftUI
struct House {
    var name: String
    var location: String
    
    mutating func changeName(newName: String) {
        self.name = newName
    }
}
struct StructView: View {
    var body: some View {
        Button {
            var houseOne = House(name: "故宫", location: "天安门大街")
            var houseTwo = houseOne
            
            houseOne.name = "天安门"
            houseTwo.location = "西直门"
            
            print(houseOne.name, houseOne.location)
            print(houseTwo.name, houseTwo.location)
        } label: {
            Text("Struct")
        }

    }
}

struct StructView_Previews: PreviewProvider {
    static var previews: some View {
        StructView()
    }
}
