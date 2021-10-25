//
//  ArrayView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/25.
//

import SwiftUI

struct ArrayView: View {
    var body: some View {
        Button {
            array()
        } label: {
            Text("Array")
        }
    }
    
    func array() {
        // 创建数组
        // 创建一个元素类型 Int 的空数组
        let firstArray = [Int]()
        print(firstArray)
        // 创建一个元素类型为 Double 的数组，包含 3 个元素，都是 2.4
        let sencondArray = [Double](repeating: 2.4, count: 3)
        print(sencondArray)
        // 创建一个空字符串数组和一个包含一个元素的字符串数组
        let thirdArray: [String] = []
        let fourthArray: [String] = ["Kobe"]
        print(thirdArray, fourthArray)
        
        // 第一个和最后一个元素，元素个数和是否为空
        let newArray: [Double] = [81, 2.4, 16]
        print(newArray.first)
        print(newArray.last)
        print(newArray.count)
        print(newArray.isEmpty)
        
        // 访问数组元素
        let indexArray: [String] = ["SwiftUI", "For", "Designers"]
        print(indexArray[0])
        print(indexArray[2])
        
        // 包含某个元素
        let containsArray: [String] = ["SwiftUI", "For", "Designers"]
        print(containsArray.contains("Designers"))
        let newContainsArray = containsArray.contains { string in
            string.contains("i")
        }
        print(newContainsArray)
        
        // 新增元素
        var appendArray: [String] = ["SwiftUI"]
        appendArray.append("For")
        print(appendArray)
        appendArray.append(contentsOf: ["Designers", "!"])
        print(appendArray)
        appendArray += appendArray
        print(appendArray)
        
        // 修改某个元素值
        var updateArray: [Int] = [8, 10, 24]
        updateArray[0] = 2
        print(updateArray)
        
        // 删除某个元素
        updateArray.remove(at: 1)
        updateArray.removeAll()
        
        // 遍历数组里的每个元素
        let forArray: [String] = ["SwiftUI", "For", "Designers"]
        for string in forArray {
            print(string)
        }
        
        for (index, string) in forArray.enumerated() {
            print("第 \(index) 个元素是 \(string)")
        }
        
        // 数组筛选
        let filterArray: [String] = ["SwiftUI", "For", "Designers"]
        let newArrayFiltered = filterArray.filter { string in
            string.contains("f")
        }
        let newArray2Filtered = filterArray.filter({ $0.contains("f")})
        
        print(newArrayFiltered)
        print(newArray2Filtered)
    }
}

struct ArrayView_Previews: PreviewProvider {
    static var previews: some View {
        ArrayView()
    }
}
