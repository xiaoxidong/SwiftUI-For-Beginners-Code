//
//  KeyboardShortcutView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

struct KeyboardShortcutView: View {
    @State var pressed1 = false
    @State var pressed2 = false
    @State var pressed3 = false
    var body: some View {
        VStack {
            Button(pressed1 ? "SwiftUI For Beginners" : "快捷键 Command + p") {
                pressed1.toggle()
            }.keyboardShortcut(KeyEquivalent("p"))
            Button(pressed2 ? "SwiftUI For Beginners" : "快捷键 p") {
                pressed2.toggle()
            }.keyboardShortcut(KeyEquivalent("p"), modifiers: [])
            Button(pressed3 ? "SwiftUI For Beginners" : "快捷键 Command + Shift + p") {
                pressed3.toggle()
            }.keyboardShortcut(KeyEquivalent("p"), modifiers: [.command, .shift])
        }
    }
}

struct KeyboardShortcutView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardShortcutView()
    }
}
