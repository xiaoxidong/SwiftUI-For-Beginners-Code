//
//  SizeClassView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/18.
//

import SwiftUI

struct SizeClassView: View {
    @Environment(\.horizontalSizeClass) var horizontalClass
    
    var body: some View {
        if horizontalClass == .regular {
            HStack {
                content
            }
        } else {
            VStack(alignment: .leading) {
                content
            }
        }
    }
    var content: some View {
        Group {
            Text("Hello, World!")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("开始学习")
                .font(.title2)
                .foregroundColor(Color.light)
        }.padding(.horizontal)
    }
}

struct SizeClassView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SizeClassView()
            if #available(iOS 15.0, *) {
                SizeClassView()
                    .previewInterfaceOrientation(.landscapeRight)
            } else {
                // Fallback on earlier versions
            }
        }
    }
}
