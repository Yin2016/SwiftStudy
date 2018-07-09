//: [Previous](@previous)

import Foundation

// 枚举格式
// 规范
enum Direction: String {
    case east = "打破迷关"
    case west
    case south
    case north
}

// 在swift中枚举类型在默认情况下不表示任何类型就是一个标识
// 不能使用0 1 2的索引取值
// 如果需要对应赋值需要为枚举设置内容类型
// 通过rawValue取枚举的原始值
// (rawValue:) 函数通过原始值取枚举值
// 枚举仅仅是一个抽象符号，并不带表任何类型，如果想要绑定原始值，必须志明枚举的类型
Direction.east.rawValue
Direction(rawValue: "打破迷关")
