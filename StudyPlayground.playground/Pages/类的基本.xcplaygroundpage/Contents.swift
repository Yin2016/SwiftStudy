//: [Previous](@previous)

import Foundation

class Person {
    // 可以写属性和方法
    // 属性：实例属性，类型属性
    // 方法：实例方法，类型方法
    var name : String
    
    init(name: String) {
        self.name = name
    }
}

// 类 默认情况下 不会生产成逐一构造器（目的：保证所有的非可选属性都有值）
// 当一个实例对象创建好后 必须保证所有的非可选属性都有值
// 方案1：重写构造函数
// 方案2：将变量设置为可选类型
// 方案3：为非可选属性设置默认值

let person = Person(name: "aa")
person.name
Person.name

