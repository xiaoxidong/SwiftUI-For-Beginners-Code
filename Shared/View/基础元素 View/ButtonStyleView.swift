//
//  ButtonStyleView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/23.
//

import SwiftUI

// DefaultButtonStyle
struct ButtonStyleView: View {
    var body: some View {
        Button("SwiftUI For Beginners") {

        }.buttonStyle(DefaultButtonStyle())
    }
}

// PlainButtonStyle
/*
struct ButtonStyleView: View {
    var body: some View {
        Button("SwiftUI For Beginners") {
            
        }.buttonStyle(PlainButtonStyle())
    }
}
*/

// BorderedButtonStyle
/*
struct ButtonStyleView: View {
    var body: some View {
        if #available(iOS 15.0, macOS 10.15, *) {
            Button("SwiftUI For Beginners") {
                
            }.buttonStyle(BorderedButtonStyle())
        } else {
            Text("BorderedButtonStyle 需要在 iOS 15.0, macOS 10.15 上使用。")
        }
    }
}
*/

// BorderedProminentButtonStyle
/*
struct ButtonStyleView: View {
    var body: some View {
        if #available(iOS 15.0, macOS 12.0, *) {
            Button("SwiftUI For Beginners") {
                
            }.buttonStyle(BorderedProminentButtonStyle())
        } else {
            Text("BorderedProminentButtonStyle 需要在 iOS 15.0, macOS 12.0 上使用。")
        }
    }
}
*/

// BorderlessButtonStyle
/*
struct ButtonStyleView: View {
    var body: some View {
        Button("SwiftUI For Beginners") {
            
        }.buttonStyle(BorderlessButtonStyle())
    }
}
*/

// LinkButtonStyle
/*
struct ButtonStyleView: View {
    var body: some View {
        #if os(macOS)
        Button("SwiftUI For Beginners") {
            
        }.buttonStyle(LinkButtonStyle())
        #else
        Text("LinkButtonStyle 只能在 macOS 上使用。")
        #endif
    }
}
*/

// CardButtonStyle
/*
struct ButtonStyleView: View {
    var body: some View {
        #if os(tvOS)
        Button("SwiftUI For Beginners") {
            
        }.buttonStyle(CardButtonStyle())
        #else
        Text("CardButtonStyle 只能在 tvOS 上使用。")
        #endif
    }
}
*/

struct ButtonStyleView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleView()
    }
}
