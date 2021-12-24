//
//  LabelView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/9.
//

import SwiftUI

// 1. 使用自定义图片和文字创建
struct LabelView: View {
    var body: some View {
        Label("加入 Slack", image: "slack")
    }
}

// 2. 使用系统图片和文字创建
/*
struct LabelView: View {
    var body: some View {
        Label("加入 Slack", systemImage: "bookmark.circle.fill")
    }
}
*/

// 3. 使用 View 来创建
/*
struct LabelView: View {
    var body: some View {
        Label {
            titleView
        } icon: {
            imageView
//            imageViewWithName("slack")
        }

    }
    
    var imageView: some View {
        Image("slack")
            .background(Color("light"))
            .cornerRadius(6)
    }
    var titleView: some View {
        Text("加入 Slack")
            .background(Color.red.frame(height: 8), alignment: .bottom)
    }
    
    func imageViewWithName(_ name: String) -> some View {
        Image(name)
            .background(Color("light"))
            .cornerRadius(6)
    }
}
*/


struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView()
    }
}
