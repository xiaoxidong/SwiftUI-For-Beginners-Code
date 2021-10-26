//
//  ClassView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/26.
//

import SwiftUI
import Foundation

class Person {
    var name: String = "Xiaodong"
    var gender: String = "Male"
    var location: String = "Beijing"
    var born: String = "2020-12-12"
}

class Horse {
    var gender: String
    var color: Color
    var age: Int
    
    init(gender: String, color: Color, age: Int = 1) {
        self.gender = gender
        self.color = color
        self.age = age
    }
}

class RecArea {
    var width: CGFloat
    var height: CGFloat
    var areas: CGFloat {
        get {
            return width * height
        }
        set(value) {
            self.width = value
        }
    }
    init(_ width: CGFloat, _ height: CGFloat) {
        self.width = width
        self.height = height
    }
    
    func area() -> CGFloat {
        return width * height
    }
}

class CircleArea {
    var width: CGFloat {
        willSet {
            print(width)
        }
        didSet {
            print(width)
        }
    }
    init() {
        self.width = 20
    }
    func area() -> CGFloat {
        return width * width
    }
}

class Area {
    var width: CGFloat
    var height: CGFloat
    init(width: CGFloat, height: CGFloat) {
        self.width = width
        self.height = height
    }
    
    func area() -> CGFloat {
        return width * height
    }
}

class RecBasic: Area {
    
}

class CircleBasic: Area {
    init(width: CGFloat) {
        super.init(width: width, height: width)
    }
    
    override func area() -> CGFloat {
        return width * width
    }
}

struct ClassView: View {
    var personOne: Person = Person()
    var personTwo = Person()
    
    var horseOne = Horse(gender: "Male", color: Color.red, age: 2)
    var horseTwo = Horse(gender: "Female", color: Color.black)
    var body: some View {
        Button {
            personOne.name = "卢西"
            personOne.gender = "Female"

            let horseThree = horseOne
            horseOne.color = Color.green
            horseThree.age = 8

            print(horseOne.color, horseOne.age)
            print(horseThree.color, horseThree.age)
            print(horseOne === horseThree)

            let recOne = RecArea(12, 13)
            let recTwo = RecArea(10, 15)
            print(recOne.area())
            print(recTwo.area())


            print(recOne.areas)
            recOne.areas = 10
            print(recOne.areas)
            print(recOne.area())

            let circle = CircleArea()
            circle.width = 15
            
            
            let recBasic = RecBasic(width: 12, height: 10)
            let circleBasic = CircleBasic(width: 20)
            print(recBasic.area())
            print(circleBasic.area())
            
        } label: {
            Text("Class")
        }
    }
}

struct ClassView_Previews: PreviewProvider {
    static var previews: some View {
        ClassView()
    }
}
