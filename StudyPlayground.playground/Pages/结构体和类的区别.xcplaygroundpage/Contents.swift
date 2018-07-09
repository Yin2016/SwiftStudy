//: [Previous](@previous)

import Foundation

// 结构体是有逐一构造器的 类没有
// 结构体是值类型 类是引用类型
// 结构体中的属性存储的是内容
// 结构体体是值类型
// 结构体不能被继承，所以也没有多态
// 结构体是可以遵循协议的，枚举也可以遵循协议，但是一定不能继承
struct Stu {
    var name: String
    var age: Int
    
    // 结构体内的函数要是修改结构体的属性时，需要在函数钱加 mutating
    mutating func test() {
        print("xxx")
        age = 10
    }
}


// 类里边的属性存储的是地址
// 类是引用类型
class Person {
    var name: String = ""
    var age: Int = 0
    
    func test() {
        age = 10
    }
    
}

let p = Person()
p.test()
p.age


let pp = p
pp.age

p.age = 11
p.age
pp.age

// 多态 -- 通过子类的对象创建父类的对象，调用父类方法
