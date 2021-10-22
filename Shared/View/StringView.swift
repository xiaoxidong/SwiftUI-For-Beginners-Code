//
//  StringView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/22.
//

import SwiftUI

struct StringView: View {
    var name: String? = "String"
    var body: some View {
        Button {
            string()
        } label: {
            Text(name!)
        }
    }
    
    func string() {
        // 使用字符串字面量
        var first: String = "Hello, World!"
        print(first)

        // String 实例化
        let second = String("Hello, World!")
        print(second)
        
        first = "Hello, SwiftUI For Designers"
        print(first)
        
        let a = 20
        let b = 10
        let string: String = "\(a) * \(b) = \(a * b)"
        print(string)
        
        let length = "SwiftUI For Designers!"
        print(length.count)
        
        let empty = "SwiftUI For Designers!"
        print(empty.isEmpty)
        print(empty == "")
        
        let begain = "SwiftUI For Designers!"
        print(begain.hasPrefix("SwiftUI"))
        
        let end = "SwiftUI For Designers!"
        print(end.hasSuffix("!"))
        
        let line = "Hello \nSwiftUI For Designers!"
        print(line)
    }
}

struct StringView_Previews: PreviewProvider {
    static var previews: some View {
        StringView()
    }
}
