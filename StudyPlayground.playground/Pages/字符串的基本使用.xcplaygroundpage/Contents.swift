//: [Previous](@previous)

import UIKit

var str = "123"
var str2 = "abc"
let num = 10


// 字符串字符串拼接
str + str2
str + "\(num)"

// 字符串格式化
let sec = 123
let formatTime = String(format: "%02zd: %02zd", sec / 60, sec % 60)

