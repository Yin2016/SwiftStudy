//: [Previous](@previous)

import Foundation
//
//var str = "Hello, playground"
//
////: [Next](@next)
//
//let rang = 1...10
//
//for index in rang {
//    print(index)
//}
//
//let block: (String, String) -> (String) = {a, b in
//    print(a + "----" + b)
//
//    return a + "----" + b
//}
//
//print(block("你好", "Swift"))


let dic = [["items": ["1", "2", "3"]], ["items": ["4", "5", "6"]], ["items": ["7", "8", "9"]]]

var itemIdAry: [String] = []

for item in dic {
    itemIdAry += item["items"]!
//    itemIdAry = itemIdAry + item["items"]!
//    for itemId in item["items"]! {
//        print(itemId)
//        itemIdAry.append(itemId)
//    }
    
}
print(itemIdAry)
