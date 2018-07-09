//: [Previous](@previous)

import Foundation


// 只有可选类型才能复制为nil
// swift中的nil只是代表本身没有值 不是空地址不同于OC
// 可选带表的含义为有可能有值也可能没有值
// 非可选类型代表无论何时都是有值的
var num: Int? = 1
print(num)

// ！代表强制解包
// ？代表可选类型（包含了其他类型）

num ?? 22
num = nil
print(num!)

// 如果想要使用可选类型的值
// 1. 先判if断内容是否为nil在解包
// 2. 可选绑定
//    逻辑：
//      先判断可选变量是否为nil，如果是那么if后边的值为false
//      如果可选变量不为nil 那么if后边的值为true，此时会进行强制解包，将包的值复制给result变量
if let result = num {
    num! + 1
}

// 3. 使用guard进行可选绑定判断
func check(scoure: Int?) {
    
    guard let s = scoure else {
        return
    }
    
    
    
}


// 可选类型应用场景
// 1. 类型转换
// 2. 函数参数
// 3.
let str = "123"
let result = Int(str)

// ！修饰也可以表示可选类型
// 如果变量在使用之前可定有值的话用“！”声明可选变量，在使用的时候直接使用变量名即可无需再次解包
// 注意：“！”声明可选变量，在使用的时候一定要有值
var a: Int! = 33
a
