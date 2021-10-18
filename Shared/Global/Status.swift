//
//  Status.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/18.
//

import SwiftUI

class Status {
    // 白色状态栏
    func lightContent() {
        UIApplication.shared.setStatusBarStyle(.lightContent, animated: true)
    }
    
    // 黑色状态栏
    func darkContent() {
        UIApplication.shared.setStatusBarStyle(.darkContent, animated: true)
    }
    
    // 显示和隐藏状态栏
    func toggleStatus(show: Bool, animation: UIStatusBarAnimation = .fade) {
        UIApplication.shared.setStatusBarHidden(show, with: animation)
    }
}
