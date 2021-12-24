//
//  DictionaryView.swift
//  SwiftUI For Beginners Code
//
//  Created by XiaoDong Yuan on 2021/10/25.
//

import SwiftUI

struct DictionaryView: View {
    var body: some View {
        Button {
            dictionary()
        } label: {
            Text("Dictionary")
        }
    }
    
    func dictionary() {
        // 创建字典
        // 创建一个 key 是 Int 类型，value 是 String 类型的空字典
        let dic = [Int: String]()
        // 创建包含 2 个元素的字典
        var newDic: [Int: String] = [1: "One", 2: "Two"]
        
        // 访问字典
        print(newDic[0])
        print(newDic[1])
        
        // 修改字典
        // 根据 key 修改 value
        newDic[2] =  "four"
        print(newDic)
        // updateValue
        newDic.updateValue("Zero", forKey: 0)
        print(newDic)
        newDic.updateValue("Three", forKey: 1)
        print(newDic)
        
        // 删除操作
        // 根据 key 删除 value
        var removeDic = [1: "One", 2: "Two", 3: "Three"]
        removeDic[1] = nil
        print(removeDic)
        
        // removeValueForKey
        removeDic.removeValue(forKey: 2)
        print(removeDic)
        
        // 遍历字典
        let forDic = [1: "One", 2: "Two", 3: "Three"]
        for (key, value) in forDic.enumerated() {
            print("Key: \(key), Value: \(value)")
        }
        
        // Key 和 Value 转化为数组
        let arrayDic = [1: "One", 2: "Two", 3: "Three"]
        let keyArray = arrayDic.keys
        print(keyArray)
        let valueArray = arrayDic.values
        print(valueArray)
    }
}

struct DictionaryView_Previews: PreviewProvider {
    static var previews: some View {
        DictionaryView()
    }
}
