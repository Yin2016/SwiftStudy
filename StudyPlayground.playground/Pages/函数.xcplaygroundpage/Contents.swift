//: [Previous](@previous)

import Foundation

// 有参有返回值的函数声明
func add(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

add(num1: 11, num2: 22)

// 没有参数没有返回值的函数
// （）代表空的元组
func add1() -> (){
    
}

func add3() {
    
}

// 多个返回值的函数
func getP() -> (canshu1: Int, canshu2: String) {
    return (canshu1: 1, canshu2: "qew")
}


// 函数内部参数
// 在函数内部可以用到的函数叫函数的内部参数
// 在外部调用的时候可以看到的参数叫做外部参数
// swift3.0开始第一个参数既是内部参数也是外部参数
// 在第一个参数前加 _ 直接忽略外部参数，调用的时候不用写外部参数名称
// 也可以将 _ 修改为名称来设置外部参数的名称
func test(_ num1: Int, num2: Int) {
    
}

test(1, num2: 2)

// 默认参数
// 给参数设置默认值 如果外部没有传递该参数则使用默认值
// 参数设置默认值之后会自动生成无该参数的函数调用方法，调用时将直接使用忽略参数的默认值执行
// 如果有多个默认参数的时候，调用时时必填参数和选填参数的任意组合都可以调用
func addNum(_ num: Int, add dis: Int = 0) -> Int {
    return num + dis
}

addNum(11)


func loadData() -> [String] {
    return ["aaa"]
}

// 可变参数
// 参数类型后跟 ... 代表改参数是多个同类型变量
// 处理的时候直接将该参数用数组处理即可
// 调用的时候不需要包裹成数组，直接使用 ，分割变量即可
func addNB(n1: Int, n2: Int) -> Int {
    return n1 + n2
}
func addNB2(_ nums: Int...) -> Int {
    var result = 0
    for num in nums {
        result += num
    }
    return result
}

let sum = addNB2(1, 2, 3, 4)


// 修改函数参数值
// 在参数类型前加入 inout 关键字进行修改参数内容，修改的是原调用的参数
// 相当于修改的是地址对应的内容，调用的时候传递的是变量的地址 &a
func change(num: inout Int) {
    num = 10
}

var a = 1
change(num: &a)
a


// 函数内部可以嵌套函数
// 好处是将相关的处理拆分成多个函数放在函数内部
// 在内部地步骤调用函数即可
// 大多数是将只有该函数内部才能用到的方法写在内部函数中，调用更加清晰
// 功能迁移的时候不用找多个函数，直接将该大函数拷贝即可
func test1() {
    func test1_1() {
        print("1_1")
    }
    func test1_2() {
        print(1_2)
    }
    print(1)
    test1_1()
    test1_2()
}
test1()



// 函数的类型
// (Int, Int) -> Int
// 函数的类型： 参数类型和返回值类型
//
// 函数类型的用途
// 可以作为另一个函数的参数或者返回值

// 加法函数
func jia(_ n1: Int, _ n2: Int) -> Int {
    return n1 + n2
}
// 减法函数
func jian(_ n1: Int, _ n2: Int) -> Int {
    return n1 - n2
}

// 函数类型做参数
func getResult(n1: Int, n2: Int, fun: (Int, Int) -> Int) -> Int {
    let result = fun(n1, n2)
    return result
}
getResult(n1: 10, n2: 20, fun: jia(_:_:))
getResult(n1: 10, n2: 20, fun: jian(_:_:))

// 函数类型做返回值
func getMethod(_ name: String) -> ((Int, Int) -> Int) {
    if (name == "jia") {
        return jia(_:_:)
    } else if (name == "jian") {
        return jian(_:_:)
    }
    return jia(_:_:)
}
let func1 = getMethod("jia")
let func2 = getMethod("jian")
func1(10, 20)
func2(10, 20)


// 编译器如何区分不同的函数
// 1. 函数名称不同
// 2. 函数的外部参数名称（外部调用的时候可以区分出参数名不同 ）
// 3. 函数类型（参数类型和返回值类型）
//    也就是方法的重载
func test(a: Int) -> Int {
    return 0
}

func test(_ a: Int) -> Int {
    return 1
}

