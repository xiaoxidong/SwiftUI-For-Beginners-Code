//
//  GestureStateView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/12/15.
//

import SwiftUI

struct GestureStateView: View {
    @GestureState private var offset: CGSize = .zero
    
    var body: some View {
        let gesture = DragGesture()
            .updating($offset) { value, state, transaction in
                state = value.translation
            }
        
        return Circle()
            .fill(Color.pink)
            .frame(width: 100, height: 100)
            .offset(offset)
            .gesture(gesture)
    }
}

struct GestureStateView_Previews: PreviewProvider {
    static var previews: some View {
        GestureStateView()
    }
}


