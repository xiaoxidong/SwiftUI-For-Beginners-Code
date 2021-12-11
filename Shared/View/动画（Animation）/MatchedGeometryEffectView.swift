//
//  MatchedGeometryEffectView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/12/10.
//

import SwiftUI

// 1. 属性变化动画
//struct MatchedGeometryEffectView: View {
//    @State var cornered = false
//    var body: some View {
//        VStack {
//            Rectangle()
//                .frame(width: 100, height: 100)
//                .cornerRadius(cornered ? 50 : 0)
//                .onTapGesture {
//                    withAnimation(.spring()) {
//                        cornered.toggle()
//                    }
//                }
//            Text("点击方形")
//        }
//    }
//}

// 2. 状态变化动画
/*
struct MatchedGeometryEffectView: View {
    @State var change = false
    var body: some View {
        VStack {
            if change {
                text
                rec
            } else {
                rec
                text
            }
        }
        .contentShape(Rectangle())
        .onTapGesture {
            withAnimation(.spring()) {
                change.toggle()
            }
        }
    }
    
    var rec: some View {
        Rectangle()
            .frame(width: 100, height: 100)
            .cornerRadius(50)
    }
    var text: some View {
        Text("SwiftUI For Designers")
            .padding()
            .background(Capsule().fill(Color.light))
    }
}
*/

// 3. matchedGeometryEffect
struct MatchedGeometryEffectView: View {
    @Namespace var nameSpace
    @State var full = true
    var body: some View {
        VStack {
            if full {
                coverView
            } else {
                Spacer()
                bottomView
            }
        }.contentShape(Rectangle())
            .onTapGesture {
                withAnimation(.spring()) {
                    full.toggle()
                }
            }
    }

    var coverView: some View {
        VStack {
            Image("people")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(200)
                .matchedGeometryEffect(id: "cover", in: nameSpace, properties: .frame, anchor: .center, isSource: true)
                .frame(width: 256, height: 256)
                
            VStack(spacing: 10) {
                Text("SwiftUI For Designers")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.primary)
                    .matchedGeometryEffect(id: "title", in: nameSpace, properties: .frame, anchor: .center, isSource: true)
                Text("任何人都可以学会苹果全平台应用开发。")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.secondary)
                    .matchedGeometryEffect(id: "subtitle", in: nameSpace, properties: .frame, anchor: .center, isSource: true)
            }
        }
    }

    var bottomView: some View {
        HStack {
            Image("people")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(100)
                .matchedGeometryEffect(id: "cover", in: nameSpace, properties: .frame, anchor: .center, isSource: true)
                .frame(width: 100, height: 100)
                
            VStack(alignment: .leading, spacing: 10) {
                Text("SwiftUI For Designers")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.primary)
                    .matchedGeometryEffect(id: "title", in: nameSpace, properties: .frame, anchor: .center, isSource: true)

                Text("任何人都可以学会苹果全平台应用开发。")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.secondary)
                    .matchedGeometryEffect(id: "subtitle", in: nameSpace, properties: .frame, anchor: .center, isSource: true)
            }
            Spacer()
        }
        .padding(8)
        .background(Color.light)
        .clipShape(RoundedRectangle(cornerRadius: 26, style: .continuous))
        .shadow(color: Color.black.opacity(0.2), radius: 16, x: 0, y: 6)
    }
}

struct MatchedGeometryEffectView_Previews: PreviewProvider {
    static var previews: some View {
        MatchedGeometryEffectView()
    }
}
