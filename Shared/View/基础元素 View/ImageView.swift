//
//  ImageView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

// 1. 图片名称
struct ImageView: View {
    var body: some View {
        Image("slack")
    }
}

// 2. 图片和无障碍使用标签
/*
struct ImageView: View {
    var body: some View {
        Image("slack", label: Text("加入 Slack"))
    }
}
*/

// 3. System Image
/*
struct ImageView: View {
    var body: some View {
        Image(systemName: "gear")
    }
}
*/

// 5. UIImage
// 注意需要是 iOS 程序
/*
struct ImageView: View {
    var body: some View {
        Image(uiImage: UIImage(named: "slack")!)
//        Image(uiImage: UIImage(named: "slack") ?? UIImage(named: "error")!)
    }
}
*/

// 6. NSImage
// 注意需要是 Mac 程序
/*
struct ImageView: View {
    var body: some View {
        if let image =  NSImage(named: "slack") {
            Image(nsImage: image)
        } else {
            Image("error")
        }
    }
}
*/

// 7. 图片名称且被无障碍使用忽略
/*
struct ImageView: View {
    var body: some View {
        Image(decorative: "slack")
    }
}
*/

// 8. cgImage
/*
struct ImageView: View {
    let cgImage = UIImage(named: "slack")?.cgImage
    var body: some View {
        Image(cgImage!, scale: 2.0, orientation: .leftMirrored, label: Text("加入 Slack"))
    }
}
*/


struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
