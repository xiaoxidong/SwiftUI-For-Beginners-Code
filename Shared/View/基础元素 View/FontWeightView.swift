//
//  FontWeightView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/13.
//

import SwiftUI

struct FontWeightView: View {
    var body: some View {
        VStack {
            Text("ultraLight").fontWeight(Font.Weight.ultraLight)
            Text("thin").fontWeight(Font.Weight.thin)
            Text("light").fontWeight(Font.Weight.light)
            Text("regular").fontWeight(Font.Weight.regular)
            Text("medium").fontWeight(Font.Weight.medium)
            Text("semibold").fontWeight(Font.Weight.semibold)
            Text("bold").fontWeight(Font.Weight.bold)
            Text("heavy").fontWeight(Font.Weight.heavy)
            Text("black").fontWeight(Font.Weight.black)
        }
    }
}

struct FontWeightView_Previews: PreviewProvider {
    static var previews: some View {
        FontWeightView()
    }
}
