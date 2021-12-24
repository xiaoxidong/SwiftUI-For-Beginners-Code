//
//  SystemProtocolView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/26.
//

import SwiftUI

// Identifiable
struct Teacher: Identifiable, Equatable {
    static func == (lhs: Teacher, rhs: Teacher) -> Bool {
        lhs.id == rhs.id
    }

    var id = UUID()
    var name: String
    var students: [Student] = []
}
struct SystemProtocolView: View {
    var teachers = [Teacher(name: "Hemu"), Teacher(name: "Galy")]
    var body: some View {
        VStack {
            ForEach(teachers) { teacher in
                Text(teacher.name)
            }
        }
    }
}

// Equatable
/*
 struct Teacher: Identifiable, Equatable {
     static func == (lhs: Teacher, rhs: Teacher) -> Bool {
         lhs.id == rhs.id
     }
     
     var id = UUID()
     var name: String
     var students: [Student] = []
 }
struct SystemProtocolView: View {
    var teacherOne = Teacher(name: "Hemu")
    var teacherTwo = Teacher(name: "Galy")
    var body: some View {
        Text(teacherOne == teacherTwo ? "一个老师" : "不同老师")
    }
}
*/

// Comparable
/*
struct Teacher: Identifiable, Comparable {
    static func == (lhs: Teacher, rhs: Teacher) -> Bool {
        lhs.age == rhs.age
    }
    
    static func < (lhs: Teacher, rhs: Teacher) -> Bool {
        lhs.age < rhs.age
    }
    
    var id = UUID()
    var name: String
    var age: Int
    var students: [Student] = []
}
struct SystemProtocolView: View {
    var teacherOne = Teacher(name: "Hemu", age: 36)
    var teacherTwo = Teacher(name: "Galy", age: 28)
    var body: some View {
        Text(teacherOne > teacherTwo ? "第一个老师年纪大" : "第二个老师年纪大")
    }
}
*/

struct SystemProtocolView_Previews: PreviewProvider {
    static var previews: some View {
        SystemProtocolView()
    }
}
