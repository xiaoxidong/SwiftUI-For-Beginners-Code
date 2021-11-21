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
            // 如果你是从新开始学习，请删除下面的代码的 // 或者选中行之后使用快捷键 Command + /。然后选中从 19 行的 if 判断到 28 行使用快捷键注释掉下面的代码块。
//            TextInputAutocapitalizationView()
            
            // 如果你遇到报错，说某些特性 is only available in iOS 15.0, macOS 12 or newer 之类的错误提示，请注释掉上面的入口，使用下面的判断入口。
            if #available(iOS 15.0, macOS 12.0, *) {
                #if os(iOS)
                AsyncImageView()
                #else
                SceneStorageView()
                    .frame(minWidth: 800, idealWidth: 1000, maxWidth: .infinity, minHeight: 600, idealHeight: 800, maxHeight: .infinity, alignment: .center)
                #endif
            } else {
                // 系统不满足要求，因为 View 里用的到内容需要更新到系统来使用，请更新。
            }
        }
    }
}
