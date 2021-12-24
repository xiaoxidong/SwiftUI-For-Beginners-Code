//
//  DropView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/12/22.
//

import SwiftUI

// 1. 获取到拖拽的 NSItemProvider
struct DropView: View {
    @State var isTarget = false
    let url = URL(string: "http://productpoke.com/")!

    var body: some View {
        VStack(spacing: 16) {
            Text("SwiftUI For Beginners")
                .padding()
                .background(Capsule().fill(Color.light))
                .onDrag {
                    return NSItemProvider(object: url as NSURL)
                }
            Rectangle()
                .frame(width: 100, height: 60)
                .foregroundColor(isTarget ? Color.designred : Color.purple)
                .onDrop(of: [.url], isTargeted: $isTarget) { providers in

                    let getUrl = providers.loadObjects(ofType: URL.self) { url in
                        print(url)
                    }
                    return getUrl
                }
        }
    }
}


// 2. 获取到拖拽的 NSItemProvider和 Drop 的位置
/*
struct DropView: View {
    @State var isTarget = false
    let url = URL(string: "http://productpoke.com/")!
    @State var locations: [CGPoint] = []
    var body: some View {
        VStack(spacing: 16) {
            Text("SwiftUI For Beginners")
                .padding()
                .background(Capsule().fill(Color.light))
                .padding(.top)
                .onDrag {
                    return NSItemProvider(object: url as NSURL)
                }
            ZStack(alignment: .topLeading) {
                Rectangle()
                    .foregroundColor(isTarget ? Color.designred : Color.purple)
                    .onDrop(of: [.url], isTargeted: $isTarget) { providers, location in
                        let getUrl = providers.loadObjects(ofType: URL.self) { url in
                            locations.append(location)
                            print(location)
                        }
                        return getUrl
                    }
                
                ForEach(locations.indices, id: \.self) { indice in
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(Color.white)
                        .offset(x: locations[indice].x, y: locations[indice].y)
                }
            }
        }
    }
}
*/

struct DropView_Previews: PreviewProvider {
    static var previews: some View {
        DropView()
    }
}
