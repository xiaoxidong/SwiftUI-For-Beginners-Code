//
//  MyDetailView.swift
//  DemoProject
//
//  Created by XiaoDong Yuan on 19/4/2022.
//  Copyright © 2022 www.coolketang.com. All rights reserved.
//

import SwiftUI

struct MyDetailView: View {
    let message: String
    
    var body: some View {
        Text(message)
            .font(.largeTitle)
    }
}

struct MyDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MyDetailView(message: "SwiftUI")
    }
}
