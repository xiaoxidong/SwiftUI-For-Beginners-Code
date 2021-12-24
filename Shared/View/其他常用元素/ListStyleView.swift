//
//  ListStyleView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/22.
//

import SwiftUI

// 1. DefaultListStyle
struct ListStyleView: View {
    var body: some View {
        List(1..<10) { index in
            Label("第 \(index) 行", systemImage: "gear")
        }.listStyle(DefaultListStyle())
    }
}

// 2. PlainListStyle
/*
struct ListStyleView: View {
    var body: some View {
        List(1..<10) { index in
            Label("第 \(index) 行", systemImage: "gear")
        }.listStyle(PlainListStyle())
    }
}
*/

// 3. SidebarListStyle
/*
struct ListStyleView: View {
    var body: some View {
        List(1..<10) { index in
            Label("第 \(index) 行", systemImage: "gear")
        }.listStyle(SidebarListStyle())
    }
}
*/

// 4. BorderedListStyle
/*
struct ListStyleView: View {
    var body: some View {
        #if os(macOS)
        if #available(macOS 12.0, *) {
            List(1..<10) { index in
                Label("第 \(index) 行", systemImage: "gear")
            }.listStyle(BorderedListStyle())
        } else {
            Text("BorderedListStyle 需要系统满足 macOS 12.0 暂时无法满足。")
        }
        #else
        Text("BorderedListStyle 只能在 macOS 上使用。")
        #endif
    }
}
*/

// 5. InsetListStyle
/*
struct ListStyleView: View {
    var body: some View {
        List(1..<10) { index in
            Label("第 \(index) 行", systemImage: "gear")
        }.listStyle(InsetListStyle())
    }
}
*/

// 6. InsetGroupedListStyle
/*
struct ListStyleView: View {
    var body: some View {
        #if os(iOS)
        List {
            Section {
                Text("第1行")
                Text("第2行")
            }
            Section {
                Text("第3行")
                Text("第4行")
            }
        }.listStyle(InsetGroupedListStyle())
        #else
        Text("InsetGroupedListStyle 只能在 iOS 上使用。")
        #endif
    }
}
*/
// 7. GroupedListStyle
/*
struct ListStyleView: View {
    var body: some View {
        #if os(iOS)
        List {
            Section {
                Text("第1行")
                Text("第2行")
            }
            Section {
                Text("第3行")
                Text("第4行")
            }
        }.listStyle(GroupedListStyle())
        #else
        Text("InsetGroupedListStyle 只能在 iOS 和 tvOS 上使用。")
        #endif
    }
}
*/

// 8. CarouselListStyle
/*
struct ListStyleView: View {
    var body: some View {
        #if os(watchOS)
        List(1..<10) { index in
            Label("第 \(index) 行", systemImage: "gear")
        }.listStyle(CarouselListStyle())
        #else
        Text("CarouselListStyle 只能在 watchOS 上使用。")
        #endif
    }
}
*/

// 9. EllipticalListStyle
/*
struct ListStyleView: View {
    var body: some View {
        #if os(watchOS)
        List(1..<10) { index in
            Label("第 \(index) 行", systemImage: "gear")
        }.listStyle(EllipticalListStyle())
        #else
        Text("EllipticalListStyle 只能在 watchOS 上使用。")
        #endif
    }
}
*/

struct ListStyleView_Previews: PreviewProvider {
    static var previews: some View {
        ListStyleView()
    }
}
