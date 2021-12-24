//
//  StringActionView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/22.
//

import SwiftUI

struct StringActionView: View {
    var body: some View {
        Button {
            string()
        } label: {
            Text("String Action")
        }
    }
    
    func string() {
        let lakers = String(format: "总计赢得 %d 个总冠军", 17)
        print(lakers)
        let scores = String(format: "场均得 %.2f 分", 94.345)
        print(scores)
        let miss = String(format: "场均失误 %f 分", 4.5)
        print(miss)
        
        let a = "Hello SwiftUI For Beginners!"
        print(a.split(separator: " "))
        
        print(a.replacingOccurrences(of: "Hello", with: "你好"))
        
        let length = "SwiftUI For Beginners!"
        print(length.count)
        
        let f = "Kobe"
        let 哦 = f.lowercased()
    }
}

struct StringActionView_Previews: PreviewProvider {
    static var previews: some View {
        StringActionView()
    }
}
