//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

// is 用于判断一个实例是否是某一类型
// as 将实例转成某一种类型 多数用于子转父 大转小
// as! 代表肯定可转换成功，转换结果为非可选类型
// as? 将某个类型转换成可选类型

let strs: String = "123"
let c = Int(str)
let d = strs as! String
let ff = strs as? Int

