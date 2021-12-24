//
//  StringView.swift
//  SwiftUI For Beginners Code
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
        
        first = "Hello, SwiftUI For Beginners"
        print(first)
        
        let a = 20
        let b = 10
        let string: String = "\(a) * \(b) = \(a * b)"
        print(string)
        
        let length = "SwiftUI For Beginners!"
        print(length.count)
        
        let empty = "SwiftUI For Beginners!"
        print(empty.isEmpty)
        print(empty == "")
        
        let begain = "SwiftUI For Beginners!"
        print(begain.hasPrefix("SwiftUI"))
        
        let end = "SwiftUI For Beginners!"
        print(end.hasSuffix("!"))
        
        let line = "Hello \nSwiftUI For Beginners!"
        print(line)
    }
}

struct StringView_Previews: PreviewProvider {
    static var previews: some View {
        StringView()
    }
}
