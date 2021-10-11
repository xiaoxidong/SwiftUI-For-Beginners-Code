//
//  Travel.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

struct Travel: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var content: String
    var guide: Guide
}
