//: [Previous](@previous)

import Foundation
import UIKit

class Person {
    func test() -> () {
        print("person")
    }
}

class Stu: Person {
    // 重写
    // 完全覆盖
    override func test() {
        print("stu")
    }
    
    func chongzai(a: Int) -> Int {
        return a
    }
    
    func chongzai(a: String) -> String {
        return a
    }
    
    func chongzai(a: Int, b: Int) -> Int {
        return a + b
    }
}

let s = Stu()
s.test()


// 重载
// 函数类型不同
// 使用：一定注意，明确的告诉编译器，拿什么类型的变量接收函数的值，为了确定返回值，让编译器知道要调用哪个桉树才可以
s.chongzai(a: 10)
s.chongzai(a: "100")
s.chongzai(a: 10, b: 10)


// 不继承NSObject是不能被转换成OC代码的
// 继承NSObject的类 重载的时候需要通过@objc（xxx）声明新的函数名称
// 在OC调用此代码的时候使用新声明的函数名称调用
class Test : NSObject {
    func chongzai(a: Int) -> (Int) {
        return a
    }
    
    @objc(wahaha:)
    func chongzai(a: Int) -> (Double) {
        return 1.1
    }

}

let test = Test()

