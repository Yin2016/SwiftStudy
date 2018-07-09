//: [Previous](@previous)

import Foundation

var dic = ["123": 1, "abc": 2]
dic = ["a": 1]
dic["c"] = 2
dic.updateValue(3, forKey: "b")
dic.removeValue(forKey: "d")
dic.remove(at: dic.index(forKey: "b")!)
dic["a"]
dic["d"] = 11

for yuanzu in dic.enumerated() {
    print(yuanzu.element, yuanzu.offset)
}

print(dic, dic.keys, dic.values, dic.enumerated())


let d1: [String: Int] = ["a": 1]
let d2: [String: Int] = ["b": 2]
let d3 = d1 + d2
print(d1 + d2)

extension Dictionary {
    static func + (d1: Dictionary, d2:Dictionary) ->Dictionary {
        
        var result = d1
        for (key, value) in d2 {
            result[key] = value
        }
        
        return result
    }
}

