//
//  NumberView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/25.
//

import SwiftUI

struct NumberView: View {
    var body: some View {
        Button {
            string()
        } label: {
            Text("数字格式化")
        }
    }
    
    func string() {
        let lakers = String(format: "总计赢得 %d 个总冠军", 17)
        print(lakers)
        // 总计赢得 17 个总冠军
        let scores = String(format: "场均得 %.2f 分", 94.345)
        print(scores)
        // 场均得 94.34 分
        let miss = String(format: "场均失误 %f 分", 4.5)
        print(miss)
        // 场均失误 4.500000 分
        
        
        let number: Double = 2.3444
        let formactString = NumberFormatter()

        formactString.numberStyle = .decimal
        formactString.maximumFractionDigits = 2
        
        print("\(formactString.string(from: NSNumber(value: number)))")
        
        let random = Int.random(in: 1...100)
    }
}

struct NumberView_Previews: PreviewProvider {
    static var previews: some View {
        NumberView()
    }
}
