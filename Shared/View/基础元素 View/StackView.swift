//
//  StackView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/9.
//

import SwiftUI

// 1. HStack
//struct StackView: View {
//    var body: some View {
//        HStack(alignment: .top, spacing: 10) {
//            Image("slack")
//            Text("加入 Slack")
//        }
//    }
//}

// 2. VStack
/*
struct StackView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image("slack")
            Text("加入 Slack")
        }
    }
}
*/

// 3. ZStack
struct StackView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.red)
            Circle()
                .frame(width: 40, height: 40)
                .foregroundColor(Color.yellow)
        }
    }
}


struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
