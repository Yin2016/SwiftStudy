//: [Previous](@previous)

import Foundation

// swift的闭包就是OC中Block
// 闭包相当于特殊的函数
func add(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

// 函数类型 (Int, Int) -> Int
let tmp = add

// 如果闭包的参数和返回值是没有的 ()->() in 都是可以省略的
var add: (Int, Int) -> Int = {
    (a, b) -> Int in
    return a + b
}

add(10, 10)

var sub: (Int, Int) -> Int = {a,b in
    return a - b
}

sub(20, 10)

// 闭包当做参数传递
func exec(n1: Int, n2: Int, block: (Int, Int) -> (Int)) -> (Int) {
    return block(n1, n2)
}

exec(n1: 10, n2: 10, block: add)
exec(n1: 20, n2: 20) { (a, b) -> (Int) in
    return a - b
}
exec(n1: 10, n2: 20) { (a, b) -> (Int) in
    return a + b
}

var sex: ()->(Int) = {
    return 10
}
sex()

