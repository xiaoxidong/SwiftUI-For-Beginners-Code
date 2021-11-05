//
//  LazyStackView.swift
//  SwiftUI For Designers
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

// LazyHStack
//struct LazyStackView: View {
//    @State var colors: [Color] = [.red, .green, .purple, .pink]
//    var body: some View {
//        ScrollView(.horizontal) {
//            LazyHStack(alignment: .center, spacing: 16, pinnedViews: [.sectionHeaders, .sectionFooters]) {
//                ForEach(0..<5) { section in
//                    Section {
//                        ForEach(0..<6) { index in
//                            colors.randomElement()
//                                .frame(width: 100, height: 100)
//                                .overlay(
//                                    VStack {
//                                        Text("Section: \(section)")
//                                        Text("Index: \(index)")
//                                    }.font(.system(size: 14, weight: .medium))
//                                        .foregroundColor(Color.white)
//                                )
//                        }
//                    } header: {
//                        Text("Header\n \(section)")
//                            .frame(width: 70, height: 100)
//                            .background(Color.black)
//                            .foregroundColor(.white)
//                    } footer: {
//                        Text("Footer\n \(section)")
//                            .frame(width: 70, height: 100)
//                            .background(Color.gray)
//                    }
//                }
//            }
//        }
//    }
//}

// LazyVStack
struct LazyStackView: View {
    @State var colors: [Color] = [.red, .green, .purple, .pink]
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .center, spacing: 16, pinnedViews: .sectionHeaders) {
                ForEach(0..<5) { section in
                    Section {
                        ForEach(0..<10) { index in
                            colors.randomElement()
                                .frame(height: 100)
                                .overlay(
                                    VStack {
                                        Text("Section: \(section)")
                                        Text("Index: \(index)")
                                    }.font(.system(size: 14, weight: .medium))
                                        .foregroundColor(Color.white)
                                )
                        }
                    } header: {
                        Text("Header: \(section)")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.black)
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
}


struct LazyStackView_Previews: PreviewProvider {
    static var previews: some View {
        LazyStackView()
    }
}
