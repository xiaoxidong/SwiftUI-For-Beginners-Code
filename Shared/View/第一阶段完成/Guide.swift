//
//  Guide.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

struct Guide: Identifiable {
    var id = UUID()
    var image: String
    var name: String
    var tag: String
    // 标签颜色可以几个颜色随机显示
}
