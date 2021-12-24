//
//  EnumView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/26.
//

import SwiftUI

enum WeekDay {
    case Sunday
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    
    var day: Int {
        switch self {
        case .Sunday:
            return 1
        case .Monday:
            return 2
        case .Tuesday:
            return 3
        case .Wednesday:
            return 4
        case .Thursday:
            return 5
        case .Friday:
            return 6
        case .Saturday:
            return 7
        }
    }
}

enum Month: Int {
    case January = 1, February, March, April, May, June, July, August, September, October, November, December
}

enum Student{
    case Name(String)
    case Mark(Int,Int,Int)
}

struct EnumView: View {
    var body: some View {
        Button {
            var day = WeekDay.Monday
            day = .Saturday
            switch day {
            case .Sunday:
                print("Sunday")
            case .Monday:
                print("Monday")
            default:
                print("default")
            }
            
            let month = Month.May.rawValue
            print(month)
            
            var name = Student.Name("Runoob")
            var marks = Student.Mark(98,97,95)
            switch marks {
            case .Name(let name):
                print("\(name)")
            case .Mark(let mark1, let mark2, let mark3):
                print("\(mark1),\(mark2),\(mark3)")
            }
        } label: {
            Text("Enum")
        }

    }
}

struct EnumView_Previews: PreviewProvider {
    static var previews: some View {
        EnumView()
    }
}

