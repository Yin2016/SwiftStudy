//: [Previous](@previous)

import Foundation

// protocol
protocol Work {
    func test()
}

// 协议也可以继承
protocol Work2: Work {
    func test()
}

// 在swift中如果遵循了协议，必须要实现协议里的所有方法
class Person: Work {
    func test() {
        print("协议方法")
    }
    
    
}

// 类不支持多继承 但是可以遵循多个协议
//class Stu: Person, Work {
//
//    override func test() {
//        print("娃哈哈")
//    }
//
//    func test() {
//
//    }
//}

//let stu = Stu()
//stu.test()


let p = Person()
p.test()

enum Direction: Work {
    case left
    case right
    case up
    case down
    
    // 实例方法
    func test() {
        print("枚举代理方法")
    }
}

Direction.left.test()

struct Point: Work {
    func test() {
        print("结构体代理")
    }
}

let pp = Point()
pp.test()

