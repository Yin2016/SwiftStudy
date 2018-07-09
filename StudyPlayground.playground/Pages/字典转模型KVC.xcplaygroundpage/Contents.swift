//: [Previous](@previous)

import Foundation

// 当一个实例被创建好之后要保证里面的所有非可选属性都有值
class Stu: NSObject {
    var name: String = ""
    var age: Int = 0
    
    
//    init(name: String) {
//        self.name = name
//    }
    
    init(dic: [String: Any]) {
//        let name = dic["name"] as? String ?? ""
//        let age = dic["age"] as? Int ?? 0
//
//        self.name = name
//        self.age = age

        // KVC实现
        // 之前必须让父类先初始化
        super.init()
        setValuesForKeys(dic)
    }
    
    override func setValue(_ value: Any?, forKeyPath keyPath: String) {
        
    }
}

let dic: [String : Any] = ["name": "zhangsan", "age": 10]
//let stu = Stu(dic: dic)

