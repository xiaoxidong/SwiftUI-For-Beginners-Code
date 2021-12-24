//
//  Destination.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

struct Destination: Identifiable {
    var id = UUID()
    var image: String
    // 地方
    var title: String
    // 目的地数量
    var tourNumber: Int
    // 收藏显示红色收藏按钮，未收藏显示白色收藏按钮
    var saved: Bool
}
