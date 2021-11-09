//
//  GeometryReaderView.swift
//  SwiftUI For Designers
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

struct GeometryReaderView: View {
    var body: some View {
        GeometryReader { geometryProxy in
            VStack {
                Button("Top") {
                    print(geometryProxy.size.width, geometryProxy.size.height)
                    print(geometryProxy.safeAreaInsets.bottom, geometryProxy.safeAreaInsets.leading)
                }.frame(width: 100, height: 50)
                Spacer()
                Button("Center") {
                    print(geometryProxy.frame(in: .global).minX, geometryProxy.frame(in: .global).midX, geometryProxy.frame(in: .global).maxX)
                    print(geometryProxy.frame(in: .local).minY, geometryProxy.frame(in: .local).midY, geometryProxy.frame(in: .local).maxY)
                }
                Spacer()
                Color.green
                    .frame(width: 154, height: 20)
                    .frame(maxWidth: .infinity, alignment: .leading)
                HStack {
                    GeometryReader { geo in
                        Button("BottomLeading") {
                            print(geo.frame(in: .named("Home")).minY)
                        }
                    }
                    Spacer()
                    GeometryReader { geo in
                        Button("BottomTrailing") {
                            print(geo.frame(in: .named("Home")).minX)
                        }
                    }
                    
                }.coordinateSpace(name: "Home")
                    .background(Color.pink)
            }.frame(maxWidth: .infinity, alignment: .center)
        }
        .frame(width: 300, height: 500)
        .background(Color.yellow)
    }
}

struct GeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderView()
    }
}
