//: [Previous](@previous)

import Foundation

// 结构体是由一些列具有相同类型或不同类型的数据组成的集合
// 结构体在使用的时候是指传递
// 只有类在使用的时候才是地址传

// 类型方法 static func
// 实例方法 func
// 无论是枚举还是结构体都可以写方法
struct Point {
    // 实例属性
    var x : Double
    var y : Double
    // 实例方法
    func distane() -> () {
        print("计算两点之间的距离")
    }
    
    // 类型属性
    static var z: Double = 0;
    // 类型方法
    static func dis() {
        
    }
}


Point.dis()
Point.z
let s = Point(x: 10, y: 10)
s.distane()

// 结构体的应用场景
// 计算两个点之间的距离
func distance(x1: Double, y1: Double, x2: Double, y2: Double) -> Double {
    return sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2))
}
distance(x1: 10, y1: 10, x2: 20, y2: 20)

func distance(p1: Point, p2: Point) -> Double {
    return sqrt(pow(p1.x - p2.x, 2) + pow(p1.y - p2.y, 2))
}
let p1 = Point(x: 10, y: 10)
let p2 = Point(x: 20, y: 20)
distance(p1: p1, p2: p2)


// 结构体扩充构造函数
struct Points {
    var x: Double
    var y: Double
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}
// 我们直接使用系统提供的构造函数 == 构造实例的函数
let p = Points(x: 10, y: 10)


// 扩充自己的函数
struct Piontss {
    var x: Double
    var y: Double
    // 扩充类函数 & 实例函数
    static var shiliCount: Int = 0
    static func count() {
        print("当前有\(shiliCount)个实例")
    }
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
        Piontss.shiliCount += 1
    }
}

let ps = Piontss(x: 10, y: 10)
Piontss.count()
Piontss.shiliCount

