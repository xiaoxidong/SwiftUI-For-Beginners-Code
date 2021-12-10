//
//  MatchedGeometryEffectView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/12/10.
//

import SwiftUI

struct MatchedGeometryEffectView: View {
    @Namespace var nameSpace
    @State var full = true
    var body: some View {
        VStack {
            if full {
                coverView
                    .matchedGeometryEffect(id: "cover", in: nameSpace, properties: .frame, anchor: .center, isSource: true)
            } else {
                Spacer()
                bottomView
                .matchedGeometryEffect(id: "cover", in: nameSpace, properties: .frame, anchor: .center, isSource: true)
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
                .frame(width: 256, height: 256)
                .clipShape(Circle())
            VStack(spacing: 10) {
                Text("SwiftUI For Designers")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.primary)
                
                Text("任何人都可以学会苹果全平台应用开发。")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.secondary)
            }
        }
    }
    
    var bottomView: some View {
        HStack {
            Image("people")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 10) {
                Text("SwiftUI For Designers")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.primary)
                
                Text("任何人都可以学会苹果全平台应用开发。")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.secondary)
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
