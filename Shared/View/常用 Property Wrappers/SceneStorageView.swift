//
//  SceneStorageView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/29.
//

import SwiftUI

struct SceneStorageView: View {
    @SceneStorage("age") var age: Int = 0
    var body: some View {
        Button("Age: \(age)") {
            age += 1
        }
    }
}

struct SceneStorageView_Previews: PreviewProvider {
    static var previews: some View {
        SceneStorageView()
    }
}
