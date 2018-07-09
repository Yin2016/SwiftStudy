//: [Previous](@previous)

import UIKit

//var array : Array = ["123", 1] as [Any]
//
//var arr = [Int]()
//arr.insert(0, at: 0)

var array = [1, 2, 3]
array.append(4)
array.count
array.capacity


for i in array {
    print(i)
}

for yuanzu in array.enumerated() {
    yuanzu.offset
    yuanzu.element
}

array += [2, 2, 3]
array

var ar = [String]()
ar.insert("11", at: 0)

