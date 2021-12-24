//
//  FunctionView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/11/2.
//

import SwiftUI

struct FunctionView: View {
    @State var age: Int = 24
    var body: some View {
        VStack(spacing: 16) {
            Text("Age: \(age)")
            HStack(spacing: 16) {
                Button("增加一岁") {
                    addOne()
                   
                    print(minMax([1, 2, 4, 10]))
                }
                Button("增加自定义的岁数") {
                    getOldBy(addAge: 10)
                }
                Button("根据岁数区间增加岁数") {
                    getOldBy(addAge: getAge())
                }
            }
        }
    }
    func addOne() {
        age += 1
    }
    
    func getOldBy(addAge: Int) {
        age += addAge
    }
    
    func getAge() -> Int {
        if age < 40 {
            return age
        } else {
            return 8
        }
    }
    
    
    func plusWith(numberOne a: Int, numberTwo b: Int) -> Int {
        return a + b
    }
    
    func revers(numberOne a: inout Int, numberTwo b: inout Int) {
        let new = a
        a = b
        b = new
        print("a: \(a), b: \(b)")
    }
    
    func minMax(_ IntArray: [Int]) -> (min: Int, max: Int) {
        var min = IntArray[0]
        var max = IntArray[0]
        for i in IntArray {
            if i < min {
                min = i
            } else if i > max {
                max = i
            }
        }
        return (min, max)
    }
}

struct FunctionView_Previews: PreviewProvider {
    static var previews: some View {
        FunctionView()
    }
}



