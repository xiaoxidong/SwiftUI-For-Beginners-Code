//
//  PreviewContextView.swift
//  SwiftUIForDesignersIOSWidgetExtension
//
//  Created by XiaoDong Yuan on 2021/11/21.
//

import SwiftUI
import WidgetKit

struct PreviewContextView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct PreviewContextView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewContextView()
            .previewContext(WidgetPreviewContext(family: .systemSmall))
        PreviewContextView()
            .previewContext(WidgetPreviewContext(family: .systemMedium))
        PreviewContextView()
            .previewContext(WidgetPreviewContext(family: .systemLarge))
    }
}
