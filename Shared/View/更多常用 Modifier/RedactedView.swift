//
//  RedactedView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/17.
//

import SwiftUI

@available(iOS 15.0, macOS 12.0, *)
struct RedactedView: View {
    var body: some View {
        Form {
            Section {
                InfoView(icon: "envelope.badge.fill", text: "834599524@qq.com")
                InfoView(icon: "location.circle.fill", text: "北京市昌平区佳运园")
            } header: {
                Text("个人信息")
                    .font(.caption)
            }
        }
    }
    
    struct InfoView: View {
        var icon: String
        var text: String
        
        @State var hide = true
        var body: some View {
            HStack {
                Label(text, systemImage: icon)
                    .redacted(reason: hide ? .placeholder : .privacy)
                Spacer()
                Button {
                    hide.toggle()
                } label: {
                    Image(systemName: hide ? "eye.circle.fill" : "eye.slash.fill")
                }.unredacted()
            }
        }
    }
}

@available(iOS 15.0, macOS 12.0, *)
struct RedactedView_Previews: PreviewProvider {
    static var previews: some View {
        RedactedView()
    }
}
