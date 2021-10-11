//
//  AppearView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

// 可以直接点击右侧预览里的运行按钮，点击查看效果
struct AppearView: View {
    @State var show: Bool = false
    var body: some View {
        Circle()
            .frame(width: 50, height: 50)
            .onTapGesture {
                show.toggle()
            }
            .onAppear {
                print("Circle 出现了～")
            }
            .sheet(isPresented: $show) {
                Color.yellow
            }
    }
}

struct AppearView_Previews: PreviewProvider {
    static var previews: some View {
        AppearView()
    }
}
