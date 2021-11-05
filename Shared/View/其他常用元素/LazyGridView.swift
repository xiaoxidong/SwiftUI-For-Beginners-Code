//
//  LazyGridView.swift
//  SwiftUI For Designers
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

// LazyGrid
//struct LazyGridView: View {
//    @State var colors: [Color] = [.red, .green, .purple, .pink]
//    let rows = [
//        GridItem(.fixed(80.00), spacing: 20),
//        GridItem(.adaptive(minimum: 30.00, maximum: 150.00), spacing: 10),
//        GridItem(.flexible(minimum: 40, maximum: 80), spacing: 30)
//    ]
//
//    var body: some View {
//        ScrollView(.horizontal) {
//            LazyHGrid(rows: rows, alignment: .center, spacing: 16) {
//                ForEach(1..<200) { index in
//                    colors.randomElement()
//                        .frame(width: 100)
//                }
//            }
//        }
//    }
//}

// LazyVGrid
struct LazyGridView: View {
    @State var colors: [Color] = [.red, .green, .purple, .pink]
    let columns = [
        GridItem(.fixed(80.00), spacing: 20),
        GridItem(.adaptive(minimum: 30.00, maximum: 150.00), spacing: 10),
        GridItem(.flexible(minimum: 40, maximum: 80), spacing: 30)
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, alignment: .center, spacing: 16) {
                ForEach(1..<200) { index in
                    colors.randomElement()
                        .frame(height: 100)
                }
            }
        }
    }
}

struct LazyGridView_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridView()
    }
}
