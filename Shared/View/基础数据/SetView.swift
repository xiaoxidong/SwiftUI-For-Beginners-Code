//
//  SetView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/25.
//

import SwiftUI

struct SetView: View {
    var body: some View {
        Button {
            set()
        } label: {
            Text("Set")
        }
    }
    
    func set() {
        // 初始化
        let numSet = Set(arrayLiteral: 1,3,4)
        let wordSet:Set = ["A","B","C"]
        let wordTypeSet:Set<String> = ["A","B","C"]
        
        // 插入元素
        var nameSet:Set = ["A", "B", "C"]
        nameSet.insert("D")
        print(nameSet)
        nameSet.update(with: "F")
        print(nameSet)
        
        // 两个 Set 的对比操作
        var aSet: Set = ["A", "B", "C"]
        var bSet: Set = ["E", "B", "C", "F"]
        // intersection，交集
        let intersectionSet = aSet.intersection(bSet)
        print(intersectionSet)
        
        // symmetricDifference，结合起来排出共同元素
        let symmetricDifferenceSet = aSet.symmetricDifference(bSet)
        print(symmetricDifferenceSet)
        
        // union 结合起来去除重复元素
        let unionSet = aSet.union(bSet)
        print(unionSet)
        
        // subtracting
        let subtractingASet = aSet.subtracting(bSet)
        print(subtractingASet)
        let subtractingBSet = bSet.subtracting(aSet)
        print(subtractingBSet)
        
        // 集合判断
        var cSet: Set = ["E", "B", "C", "F", "G"]
        // 是否为空
        print(aSet.isEmpty)
        
        // 是否包含 
        print(bSet.isSubset(of: cSet))
        
        // 是否包含
        print(bSet.isSuperset(of: aSet))
        
        // 包含且不等于
        print(cSet.isStrictSuperset(of: bSet))
        
        // isDisjoint
        print(aSet.isDisjoint(with: bSet))
    }
}

struct SetView_Previews: PreviewProvider {
    static var previews: some View {
        SetView()
    }
}
