//: [Previous](@previous)

import Foundation

// 协议的可选仅仅是OC的特性，在swift中是不支持的
// 解决方案
// 让swift协议，拥有OC的特性
// 通过 @objc 将swift的代理拥有OC代理的特性
@objc
protocol Work {
    @objc optional func doWork()
}

class Person: Work {

}
