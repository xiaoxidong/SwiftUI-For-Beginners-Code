//
//  FirstPeriodView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/11.
//

import SwiftUI

struct FirstPeriodView: View {
    var destinations: [Destination] = [
        Destination(image: "beijing", title: "北京", tourNumber: 112, saved: false),
        Destination(image: "shanghai", title: "上海", tourNumber: 86, saved: true),
    ]
    var body: some View {
        Text("Hello, World!")
    }
}

struct FirstPeriodView_Previews: PreviewProvider {
    static var previews: some View {
        FirstPeriodView()
    }
}
