//: Playground - noun: a place where people can play

import UIKit

let a = 1..<3

func levelScore(score: Double) {
    
    
    // 区间匹配
    switch score {
    case 0..<60:
        print("不及格")
    case 60..<90:
        print("优秀")
    case 90...100:
        print("牛逼")
    default:
        print("XX")
    }
    
}

levelScore(score: 99)

// 元组匹配
let point = (10, 10)
switch point {
case (0, 0):
    
default:
    
}

