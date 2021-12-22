//
//  DragAndDropView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/12/15.
//

import SwiftUI

// 1. 直接返回 NSItemProvider
struct DragView: View {
    var body: some View {
        Text("SwiftUI For Designers")
            .padding()
            .background(Capsule().fill(Color.light))
            .onDrag {
                return NSItemProvider(object: "SwiftUI For Designers" as NSString)
            }
    }
}

// 2. 设置拖拽 View 的预览样式
/*
@available(iOS 15.0, macOS 12.0, *)
struct DragView: View {
    let url = URL(string: "http://productpoke.com/")!
    var body: some View {
        Text("SwiftUI For Designers")
            .padding()
            .background(Capsule().fill(Color.light))
            .onDrag {
                return NSItemProvider(object: url as NSURL)
            } preview: {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color.designred)
            }

    }
}
*/

struct DragView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, macOS 12.0, *) {
            DragView()
        } else {
            // Fallback on earlier versions
        }
    }
}
