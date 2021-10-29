//
//  ObservedObjectView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/29.
//

import SwiftUI
//class Employee: ObservableObject {
//    @Published var age: Int = 24
//}
//struct ObservedObjectView: View {
//    @ObservedObject var employee = Employee()
//    var body: some View {
//        VStack {
//            Text("Age: \(employee.age)")
//            Button {
//                employee.age += 1
//            } label: {
//                Text("增加年龄")
//            }
//        }
//    }
//}

// objectWillChange
class Employee: ObservableObject {
    var age: Int = 24
}
struct ObservedObjectView: View {
    @ObservedObject var employee = Employee()
    var body: some View {
        VStack {
            Text("Age: \(employee.age)")
            Button {
                employee.objectWillChange.send()
                employee.age += 1
            } label: {
                Text("增加年龄")
            }
        }
    }
}


struct ObservedObjectView_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectView()
    }
}
