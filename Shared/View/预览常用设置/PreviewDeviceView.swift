//
//  PreviewDeviceView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/11/21.
//

import SwiftUI

struct PreviewDeviceView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PreviewDeviceView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            if #available(iOS 15.0, *) {
                PreviewDeviceView()
                    .previewDevice(PreviewDevice(rawValue: "iPhone 13"))
                    .previewDisplayName("My Name")
            } else {
                PreviewDeviceView()
                    .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
                .previewDisplayName("My Name")
            }
        }
        .previewLayout(.device)
    }
}
