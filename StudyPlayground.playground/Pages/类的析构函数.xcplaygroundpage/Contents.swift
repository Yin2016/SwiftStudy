//: [Previous](@previous)

import Foundation

class Student {
    var name: String = ""
    var age: Int = 0
    var score: Double = 0.0
    
    // 析构函数 == OC-dealloc
    deinit {
        print("我被释放")
    }
    
}

// 属性和析构函数必须写到类中

var s: Student? = Student()
s = nil
