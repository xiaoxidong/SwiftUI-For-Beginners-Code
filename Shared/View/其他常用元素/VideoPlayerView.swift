//
//  VideoPlayerView.swift
//  SwiftUI For Beginners
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI
import AVKit

// 1. 直接初始化
//struct VideoPlayerView: View {
//    let player = AVPlayer(url: URL(string: "https://swiftui.oss-cn-beijing.aliyuncs.com/001_WC-EditVideo_1.MP4")!)
//    // 本地文件
//    // Bundle.main.url(forResource: "coast", withExtension: "mp4")!
//    let end = NotificationCenter.default.publisher(for: NSNotification.Name.AVPlayerItemDidPlayToEndTime)
//
//    var body: some View {
//        VideoPlayer(player: player)
//            .ignoresSafeArea()
//            .onAppear {
//                player.play()
//            }
//            .onReceive(end) { _ in
//                player.seek(to: .zero)
//                player.play()
//            }
//    }
//}

// 2. 在 VideoPlayer 上显示内容初始化
struct VideoPlayerView: View {
    let player = AVPlayer(url: URL(string: "https://swiftui.oss-cn-beijing.aliyuncs.com/001_WC-EditVideo_1.MP4")!)
    let end = NotificationCenter.default.publisher(for: NSNotification.Name.AVPlayerItemDidPlayToEndTime)
    
    var body: some View {
        VideoPlayer(player: player, videoOverlay: {
            VStack {
                Text("我的猫咪🐱")
                    .foregroundColor(.white)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(Color.red)
                    .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                Spacer()
            }
        })
            .ignoresSafeArea()
            .onAppear {
                player.play()
            }
            .onReceive(end) { _ in
                player.seek(to: .zero)
                player.play()
            }
    }
}
struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView()
    }
}
