//
//  ContentShapeView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

// 点击红色区域和红色外面的 16 padding 区域
// 注意：在右侧预览里运行的时候没办法打印，可以在模拟器里运行然后点击，在下面的打印区域查看。
struct ContentShapeView: View {
    var body: some View {
        Color.red
            .frame(width: 50, height: 50)
            .padding(.all, 16)
            .onTapGesture {
                print("你点击了啊！")
            }
    }
}


// contentShape
/*
struct ContentShapeView: View {
    var body: some View {
        Color.red
            .frame(width: 50, height: 50)
            .padding(.all, 16)
            .contentShape(Rectangle())
            .onTapGesture {
                print("你点击了啊！")
            }
    }
}
*/

// 不用 contentShape 也可以的操作
/*
struct ContentShapeView: View {
    var body: some View {
        Color.red
            .frame(width: 50, height: 50)
            .padding(.all, 16)
//            .contentShape(Rectangle())
            .background(Color.light)
            .onTapGesture {
                print("你点击了啊！")
            }
    }
}
 */


struct ContentShapeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentShapeView()
    }
}
