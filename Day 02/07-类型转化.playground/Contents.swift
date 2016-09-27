//: Playground - noun: a place where people can play

import UIKit

// 1.之前的as使用
// as
let str = "www.520it.com"
(str as NSString).substring(to: 6)

// 2.as? as! --> 将Any类型转成具体类型
let dict : [String : Any] = ["name" : "why", "age" : 18, "height" : 1.88]

// 2.1. as? 的用法
// 通过as?转成可选类型
// as? : 转成的类型是一个可选类型, 系统会自动判断tempName是否可以转成String, 如果可以转成, 那么获取字符串, 如果转化不成功, 则返回nil
let tempName = dict["name"]
let name = tempName as? String
if let name = name { // 可选绑定
    print(name)
}

if let name = dict["name"] as? String {
    print(name)
}


// 2.2. as! 的用法
// 通过as!转成具体类型
// as! : 将类型转成具体的类型
// 注意: 如果转化不成功, 则程序会直接崩溃
// 建议: 如果确定转化成功,再用as!, 平时不建议
let tempName1 = dict["name"]
let name1 = tempName1 as! String
