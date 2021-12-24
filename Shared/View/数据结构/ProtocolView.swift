//
//  ProtocolView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/26.
//

import SwiftUI
protocol China {
    var name: String { get }
    var money: Int { get set }
    var population: Int { get set }
    
    func total() -> Int
}

protocol Taiwan: China {
    
}
struct Province: China {
    var name: String
    var money: Int
    var population: Int
    
    func total() -> Int {
        return money * population
    }
}


struct ProtocolView: View {
    var body: some View {
        Button {
            var beijing = Province(name: "Beijing", money: 6000, population: 2000000)
            beijing.money = 8000
            beijing.name = "Bei"
            
            print(beijing)
        } label: {
            Text("Protocol")
        }

    }
}

struct ProtocolView_Previews: PreviewProvider {
    static var previews: some View {
        ProtocolView()
    }
}
 
