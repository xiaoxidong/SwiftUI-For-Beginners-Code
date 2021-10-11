//
//  TextView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

// 1. String
struct TextView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

// 2. + 运算
/*
struct TextView: View {
    var body: some View {
        Text("Hello World！")
            .foregroundColor(Color.red)
        + Text("Change it.")
            .foregroundColor(Color.purple)
    }
}
*/

// 3. Image
/*
struct TextView: View {
    var body: some View {
        Text("Hello World！")
            .foregroundColor(Color.red)
        + Text(Image("slack"))
            .foregroundColor(Color.red)
    }
}
*/
/*
struct TextView: View {
    var body: some View {
        Text("Hello World！\(Image("slack"))")
            .foregroundColor(Color.red)
    }
}
*/

// 4. AttributedString
/*
struct TextView: View {
    var body: some View {
        Text("可以在这**学习**下 *AttributedString* 的用法。 [打开网页](https://developer.apple.com/documentation/foundation/attributedstring/)")
    }
}
*/

/*
// 需要打开下面预览里的版本判断
@available(iOS 15, *)
struct TextView: View {
    let text: AttributedString = {
        var text1 = AttributedString("点击查看")
        text1.font = .body.monospaced()
        
        var text2 = AttributedString("AttributedString")
        text2.link = URL(string: "https://developer.apple.com/documentation/foundation/attributedstring/")
        
        return text1 + text2
    }()
    
    var body: some View {
        Text(text)
    }
}
*/

// 5. 显示日期
/*
struct TextView: View {
    var body: some View {
        let now = Date()
        let twoDays: TimeInterval = 2 * 24 * 60 * 60
        // 提前两天时间
        let date = now.advanced(by: twoDays)
        // 当前时间
//        let date = now
        // 后面两天时间
//        let date = now.addingTimeInterval(twoDays)
        
        VStack {
            Text(date, style: .time)
            Text(date, style: .date)
            Text(date, style: .relative)
            Text(date, style: .offset)
            Text(date, style: .timer)
        }
    }
}
*/


//@available(iOS 15, *)
struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
