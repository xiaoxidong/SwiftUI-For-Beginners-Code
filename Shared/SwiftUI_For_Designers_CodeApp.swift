//
//  SwiftUI_For_Designers_CodeApp.swift
//  Shared
//
//  Created by XiaoDong Yuan on 2021/10/8.
//

import SwiftUI

@main
struct SwiftUI_For_Designers_CodeApp: App {
    
    var body: some Scene {
        WindowGroup {
//            if #available(iOS 15.0, *) {
//                BackView()
//            } else {
//                // 低于 15.0 版本的处理
//            }
            if #available(iOS 15.0, *) {
#if os(iOS)
                VideoPlayerView()
#else
                SceneStorageView()
                    .frame(minWidth: 800, idealWidth: 1000, maxWidth: .infinity, minHeight: 600, idealHeight: 800, maxHeight: .infinity, alignment: .center)
#endif
            } else {
                // Fallback on earlier versions
            }
        }
    }
}
