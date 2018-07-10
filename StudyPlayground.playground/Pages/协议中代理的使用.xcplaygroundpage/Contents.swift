//: [Previous](@previous)

import Foundation

// 一般协议的定义
// ：class
// ：NSObjectProtocol 继承之后才能用weak修饰创建弱引用（weak只能修饰类型变量）

protocol Work: NSObjectProtocol {
    func doWork()
}

class Person: NSObject, Work {
    func doWork() {
        print("人开始工作")
    }
}

class Dog: NSObject, Work {
    func doWork() {
        print("xxx")
    }
}

class Master {
    weak var delegate: Work?
    
}

let master = Master()
// 设置代理
master.delegate = Dog()
master.delegate = Person()
master.delegate?.doWork()

