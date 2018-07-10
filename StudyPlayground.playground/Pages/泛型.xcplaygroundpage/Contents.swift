//: [Previous](@previous)

import Foundation

//// 函数 交换两个数的数值
//func exchange(num1: inout Int, num2: inout Int) {
//    let tep = num1
//    num1 = num2
//    num2 = tep
//}
//
//var a = 10
//var b = 20
//exchange(num1: &a, num2: &b)
//a
//b


// 泛型：泛化的类型，不是某一个具体的类型
// 在函数名称之后用<name>声明泛型名称 多数用T命名
// 一旦函数内部确定了 T 的类型，那么所有的T都是该类型
func exchange<T>(num1: inout T, num2: inout T) {
    let temp = num1
    num1 = num2
    num2 = temp
}

var a = 10
var b = 20
exchange(num1: &a, num2: &b)

var c = 10.1
var d = 20.2
exchange(num1: &c, num2: &d)
c
d

// 泛型与结构体的结合
struct Point<T> {
    var x: T
    var y: T
}

let p = Point(x: "das", y: "zc")
p.x
p.y


// 泛型与类型的结合
class Stack<T> {
    var array:[T] = []
    
    func pop() -> T? {
        return array.removeLast()
    }
    
    func push(_ value: T) {
        array.append(value)
    }
}

let st = Stack<Int>()
st.push(23)
st.push(4)
st.pop()


// 泛型与协议的关联
protocol Work {
    
    // 协议中需要使用 associatedtype 关键字声明泛型
    associatedtype T
    
    func run() -> T
    func eat() -> T
}

class Person : Work {
    func run() -> Person {
        print("pao")
        return self
    }
    func eat() -> Person {
        print("chi")
        return self
    }
}
let person = Person()
person.run().eat().eat().run().eat()

// 使用泛型的时候可以在函数类型之后加入where关键字声明泛型的使用条件
// where T: Person 意思是说泛型T只能是Person或集成Person的对象
func test<T>(a: T) where T: Person {
    
}





