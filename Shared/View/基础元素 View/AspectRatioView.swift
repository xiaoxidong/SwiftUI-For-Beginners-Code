//
//  AspectRatioView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/13.
//

import SwiftUI

// 1. 缩放模式
// 无 aspectRatio
struct AspectRatioView: View {
    var body: some View {
        Image("beijing")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

// aspectRatio
/*
struct AspectRatioView: View {
    var body: some View {
        Image("beijing")
            .resizable()
            .aspectRatio(0.5, contentMode: .fit)
            .frame(width: 300, height: 300, alignment: .leading)
    }
}
*/

// 2. 缩放填充
/*
struct AspectRatioView: View {
    var body: some View {
        Image("beijing")
            .resizable()
            .scaledToFill()
    }
}
*/

// 3. 缩放展示
/*
struct AspectRatioView: View {
    var body: some View {
        Image("beijing")
            .resizable()
            .scaledToFit()
    }
}
*/

struct AspectRatioView_Previews: PreviewProvider {
    static var previews: some View {
        AspectRatioView()
    }
}
