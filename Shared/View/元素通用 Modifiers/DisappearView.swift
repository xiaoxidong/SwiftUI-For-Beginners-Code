//
//  DisappearView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

struct DisappearView: View {
    @State var show: Bool = true
    var body: some View {
        HStack {
            if show {
                Circle()
                    .foregroundColor(.red)
                    .onAppear {
                        print("红色球出现")
                    }
                    .onDisappear {
                        print("红色球消失")
                    }
            }
            Circle()
                .foregroundColor(.purple)
            if !show {
                Circle()
                    .foregroundColor(.green)
                    .onAppear {
                        print("蓝色球出现")
                    }
                    .onDisappear {
                        print("蓝色球消失")
                    }
            }
        }.contentShape(Rectangle())
        .background(Color.light)
        .ignoresSafeArea()
        .onTapGesture {
            withAnimation(.spring()) {
                show.toggle()
            }
        }
    }
}

struct DisappearView_Previews: PreviewProvider {
    static var previews: some View {
        DisappearView()
    }
}
