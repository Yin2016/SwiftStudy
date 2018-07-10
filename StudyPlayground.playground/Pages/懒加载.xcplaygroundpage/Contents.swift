//: [Previous](@previous)

import Foundation

// 懒加载的好处
// 1. 使用的时候才加载，节省资源
// 2. 可以防止重复创建
// 3. 不用关心代码的顺序

// lazy修饰为懒加载
// 懒加载 = 后面可以跟值、具体的变量、构造函数
// 所谓的懒加载是指在用到的时候在通过后面的函数获取相应的实例
class Person {
    lazy var name: String = "xxx"
    
}

let p = Person()
p.name
