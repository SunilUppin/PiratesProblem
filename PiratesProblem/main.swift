//
//  main.swift
//  PiratesProblem
//
//  Created by Sunil on 15/09/20.
//  Copyright © 2020 User. All rights reserved.
//

import Foundation

func removeLoot(with array:[Int], sortedArra:[Int], count:Int) -> Int {
    var lootArray = array
    var sortedArray = sortedArra
    let nextCount = count + 1
    for (index, value) in lootArray.enumerated() {
        let tempIndex =  index + 1
        if tempIndex < lootArray.count, value < lootArray[tempIndex] {
            let removedElement = lootArray.remove(at: tempIndex)
            if let firstIndex = sortedArray.firstIndex(of: removedElement) {
                sortedArray.remove(at: firstIndex)
            }
        }
    }
    if sortedArray != lootArray {
        return removeLoot(with: lootArray, sortedArra: sortedArray, count: nextCount)
    }
    return nextCount
}

print("Enter numbers below separated by space")
var arr = readLine()!.components(separatedBy: " ").map{(a: String)->(Int) in
    return Int(a)!
}
var test3 = arr.sorted(by: {$0 > $1})
if test3 != arr {
    print(removeLoot(with: arr, sortedArra: test3, count: 0))
} else {
    print(0)
}
