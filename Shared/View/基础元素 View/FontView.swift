//
//  FontView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/13.
//

import SwiftUI

// 1. 系统预设的文字样式
//struct FontView: View {
//    var body: some View {
//        VStack {
//            VStack {
//                Text("largeTitle").font(.largeTitle)
//                Text("title").font(.title)
//                Text("headline").font(.headline)
//                Text("subheadline").font(.subheadline)
//            }
//            VStack {
//                Text("body").font(.body)
//                Text("callout").font(.callout)
//                Text("footnote").font(.footnote)
//                Text("caption").font(.caption)
//                Text("title2").font(.title2)
//                Text("title3").font(.title3)
//                Text("caption2").font(.caption2)
//            }
//        }
//    }
//}

// 2. 系统字体自定义样式
/*
struct FontView: View {
    var body: some View {
        VStack {
            Text("Size，Weights 和 Designs").font(.system(size: 26, weight: .bold, design: .monospaced))
            Text("Styles").font(.system(.largeTitle))
            Text("Size").font(.system(size: 26))
            Text("Styles 和 Designs").font(.system(.largeTitle, design: .serif))
        }
    }
}
*/

// 3. 使用自定义字体
struct FontView: View {
    var body: some View {
        VStack {
            #if os(iOS)
            Text("Menlo").font(.init(UIFont(name: "Menlo", size: 16)!))
            #else
            Text("Menlo").font(.init(NSFont(name: "Menlo", size: 16)!))
            #endif
            Text("Menlo").font(.custom("Menlo", size: 16))
        }
    }
}

struct FontView_Previews: PreviewProvider {
    static var previews: some View {
        FontView()
    }
}
