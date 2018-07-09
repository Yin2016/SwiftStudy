//: [Previous](@previous)

import Foundation

class Student {
    // 实例属性(存储属性、计算属性)
    // 可以直接用来存储内容的属性 ==  存储属性
    //
    var name: String = ""
    var age: Int = 0
    var score1: Double = 0.0
    var score2: Double = 0.0
    var avgScore: Double {
        get {
            return (score1 + score2) / 2
        }
    }
    
    
    // 计算属性并不是直接用来存储数值的,他是通过某些计算得来的数值
    
    
    static var personCount: Int = 0
   
    init() {
        Student.personCount += 1
    }
    deinit {
        Student.personCount -= 1
    }
    
    // 实例方法
    func test() -> () {
        print("\(Student.personCount)个人")
    }
    
    // 类方法
    // static修饰的类方法不能被重写
    // class修饰的类方法可以被重写
    static func printCount() {
        print("\(Student.personCount)个人")
    }
    
    // 类方法
    class func printCount2() {
        print("\(Student.personCount)个人")
    }
}

class Person: Student {
    override class func printCount2() {
        super.printCount2()
        print("调用了Person")
    }
}

var s1: Student? = Student()
var s2: Student? = Student()
var s3: Student? = Student()
Student.personCount
s1?.avgScore
s3?.test()
Student.printCount()
Student.printCount2()

Person.printCount2()
