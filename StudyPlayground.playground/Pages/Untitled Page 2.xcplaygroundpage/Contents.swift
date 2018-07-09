//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

str.substring(to: str.index(after: str.startIndex))

let cunstomIndex = str.index(str.startIndex, offsetBy: 3)
let endIndex = str.index(str.endIndex, offsetBy: -3)
str.substring(to: cunstomIndex)

let range = str.startIndex..<cunstomIndex
str.substring(with: range)

let douhao = str.index(of: "l")

str[str.startIndex...cunstomIndex]
str[endIndex]
str[douhao! ... endIndex]
