//: [Previous](@previous)

import Foundation

class Peron {
    
    var dog: Dog?
    
    deinit {
        print("人挂了")
    }
}

class Dog {
     var master: Peron?
    
    deinit {
        print("狗挂了")
    }
}

var p: Peron? = Peron()
var p2 = p

var d: Dog? = Dog()

p?.dog = d
d?.master = p
d = nil
p = nil
p
d
