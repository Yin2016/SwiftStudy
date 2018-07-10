//: [Previous](@previous)

import Foundation

class Person {
    var resultBlock: (() -> ())?
    
    func test() {
        // 方式1通过weak解决循环引用问题
        //weak var weakSelf = self
        // 方式3
//        unowned let weakSelf = self
        resultBlock = {
            // 方式2 [weak self] in 声明block内使用的self都是被weak修饰的弱引用类型
//            [weak self] in
            // 方式4 [unowned self] in
            [unowned self] in
            print("xxxx" ,self)
            
        }
    }
    
    deinit {
        print("被释放了")
    }
}

var p: Person? = Person()
p?.test()
p?.resultBlock?()
p = nil









