//
//  GeometryReaderView.swift
//  SwiftUI For Designers
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

// size
struct GeometryReaderView: View {
    @State var show = false

    var body: some View {
        if #available(iOS 15.0, macOS 12.0, *) {
            Button("Open") {
                show = true
            }
            .confirmationDialog(String("Are you sure?"), isPresented: $show, titleVisibility: .visible) {
                Button("Yes") { }
                Button("Yes") { }
                Button("No", role: .cancel) { }
                
            } message: {
                Text("This action cannot be undone. Would you like to proceed?")
            }
        } else {
            // Fallback on earlier versions
        }
    }
}

// safeAreaInsets
/*
struct GeometryReaderView: View {
    var body: some View {
        HStack {
            Color.purple
            GeometryReader { geo in
                Button {
                    print(geo.safeAreaInsets.top, geo.safeAreaInsets.bottom)
                } label: {
                    Color.pink.overlay( Text("点击").foregroundColor(.white).bold() )
                }.buttonStyle(PlainButtonStyle())
            }
        }
        // 父 View 的大小会限制到 safeAreaInsets，可以查看在 HStack 有和没有 frame 的时候获取到的 safeAreaInsets。
//        .frame(width: 300, height: 700)
    }
}
*/

// frame
// global 和 local
/*
struct GeometryReaderView: View {
    var body: some View {
        HStack {
            Color.purple
            GeometryReader { geo in
                Button {
                    // global
                    print(geo.frame(in: .global).minX, geo.frame(in: .global).midX, geo.frame(in: .global).maxX)
                    print(geo.frame(in: .global).minY, geo.frame(in: .global).midY, geo.frame(in: .global).maxY)
                    // local
                    print(geo.frame(in: .local).minX, geo.frame(in: .local).midX, geo.frame(in: .local).maxX)
                    print(geo.frame(in: .local).minY, geo.frame(in: .local).midY, geo.frame(in: .local).maxY)
                } label: {
                    Color.pink.overlay( Text("点击").foregroundColor(.white).bold() )
                }.buttonStyle(PlainButtonStyle())
            }
        }
    }
}
*/

// name
/*
struct GeometryReaderView: View {
    var body: some View {
        HStack {
            Color.purple
            VStack {
                Color.black
                GeometryReader { geo in
                    Button {
                        print(geo.frame(in: .named("stack")).minX, geo.frame(in: .named("stack")).midX, geo.frame(in: .named("stack")).maxX)
                        print(geo.frame(in: .named("stack")).minY, geo.frame(in: .named("stack")).midY, geo.frame(in: .named("stack")).maxY)
                    } label: {
                        Color.pink
                            .overlay( Text("点击").foregroundColor(.white).bold() )
                    }.buttonStyle(PlainButtonStyle())
                }
            }.coordinateSpace(name: "stack")
        }
    }
}
*/

// 和 .background 或 .overlay Modifier 结合使用
/*
struct GeometryReaderView: View {
    var body: some View {
        HStack {
            Color.purple
            Text("SwiftUI For Designers")
                .font(.largeTitle)
                .overlay(
                    GeometryReader { geo in
                        Button {
                            print(geo.size.width, geo.size.height)
                        } label: {
                            Color.clear
                                .contentShape(Rectangle())
                        }.buttonStyle(PlainButtonStyle())
                    }
                )
        }
    }
}
*/

struct GeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderView()
    }
}
