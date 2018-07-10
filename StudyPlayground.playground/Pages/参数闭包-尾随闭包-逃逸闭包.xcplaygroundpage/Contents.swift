//: [Previous](@previous)

import Foundation

func test(a: Int, b: Int, bb: (Int, Int) -> (Int)) {
    
}

test(a: 10, b: 10) { (a, b) -> (Int) in
    return a + b
}

func test2(bb: (Int, Int) -> (Int)) {
    bb(10, 20)
}

test2 { (a, b) -> (Int) in
    print("闭包调用")
    return 2
}

