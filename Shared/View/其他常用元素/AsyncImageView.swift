//
//  AsyncImageView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/21.
//

import SwiftUI
@available(iOS 15.0, macOS 12.0, *)

// 1. 直接使用图片 URL 初始化
//struct AsyncImageView: View {
//    var body: some View {
//        AsyncImage(url: URL(string: "https://swiftui.oss-cn-beijing.aliyuncs.com/people.png")!, scale: 1)
//    }
//}

// 2. 使用占位图和获取到的图片初始化
/*
 struct AsyncImageView: View {
 var body: some View {
 AsyncImage(url: URL(string: "https://swiftui.oss-cn-beijing.aliyuncs.com/beijing.png")!) { image in
 image
 .resizable()
 .aspectRatio(contentMode: .fit)
 } placeholder: {
 Image("slack")
 }
 }
 }
 */

// 3. 根据获取图片的结果初始化
struct AsyncImageView: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://swiftui.oss-cn-beijing.aliyuncs.com/beijing.png")!, transaction: Transaction(animation: Animation.easeInOut(duration: 1.0))) { phase in
            switch phase {
            case .empty:
                Text("加载中...")
            case .success(let image):
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
            case .failure(let error):
                VStack {
                    Text("图片无法加载")
                    Text(error.localizedDescription)
                        .font(.caption)
                }
            @unknown default:
                Text("未知问题")
            }
        }
    }
}


@available(iOS 15.0, macOS 12.0, *)
struct AsyncImageView_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageView()
    }
}
