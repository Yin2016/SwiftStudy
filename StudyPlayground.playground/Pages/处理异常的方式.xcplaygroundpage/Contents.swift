//: [Previous](@previous)

import Foundation

// Error协议 就是告诉编译器这个枚举可以充当具体的异常值
enum FileError: Error{
    case notExists
    case notFormat
    case noContent
}

// 写一个函数，让他抛出异常
// path不存在 nil
// path存在 但是路径文件格式不对
func readFile(path: String) throws -> String {
    
    // 1. 判断文件路径是否存在
    let isExsists = FileManager.default.fileExists(atPath: path)
    if !isExsists {
        // 如果文件不存在 抛出异常
        // 如果想要成为异常值 必须遵循Error协议
        throw FileError.notExists
    }
    
    // 2. 读取文件内容
    // 如果这个函数出现异常一般都是格式不正确导致的
    var content: String = ""
    do {
        // 尝试执行操作
        // 如果有异常会在catch中捕获异常
        content = try String(contentsOfFile: path)
    } catch {
        //捕捉到异常回执行此闭包
        throw FileError.notFormat
    }
    
    if content.lengthOfBytes(using: .utf8) == 0 {
        throw FileError.noContent
    }
    
    return content
}

// 让外界知道，为什么是nil 什么原因
let path = Bundle.main.path(forResource: "/Users/jie/Desktop/【WLPT】2018市场推广改革方案-201807", ofType: ".doc")
print(path ?? "")
// 怎样处理异常
// 方式1 ： do catch
do {
    let result = try readFile(path: path ?? "")
} catch {
    print(error)
}

// 方式2 ：try? 代表我们知道这里会抛出异常，但是我们不做处理，如果有问题就是nil
//let result = try? readFile(path: path ?? "")
//print(result ?? "aa")

// 方式3：try! 确定一定不会有异常发生 风险很大一旦有异常直接崩溃
//let result = try! readFile(path: path!)












