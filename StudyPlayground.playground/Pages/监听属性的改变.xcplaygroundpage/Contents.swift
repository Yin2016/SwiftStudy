//: [Previous](@previous)

import Foundation

class Person {
    var name: String = "" {
        willSet {
            print("即将赋值")
            name        // 旧值
            newValue    // 新值
        }
        didSet {
            print("赋值之后")
            name        // 新值
            oldValue    // 旧值
        }
    }
    var age: Int = 0
    var avgScore: Double {
        get {
            return 2.2
        }
        set {
            newValue
        }
    }
    
    
}

let p = Person()
p.name = "张三"
p.age = 10
p.avgScore = 1000
p.name
p.avgScore
