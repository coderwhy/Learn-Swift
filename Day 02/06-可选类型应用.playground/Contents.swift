//: Playground - noun: a place where people can play

import UIKit

// 只要一个类型有可能为nil, 那么这个标识符的类型一定是一个可选类型

// 1.将字符串转成Int类型
let m : Double = 2.44
let n = Int(m)

let str : String = "123"
let num : Int? = Int(str) // 123/nil


// 2.根据文件名称:123.plist, 获取该文件的路径
let path : String? = Bundle.main.path(forResource: "123.plist", ofType: nil) // string/nil


// 3.将字符串转成NSURL
// 如果字符串中有中文,那么就是转化不成功, 返回结果 nil
// let url : NSURL? = NSURL(string: "http://www.520it.com") // URL/nil
let url = URL(string: "http://www.520it.com")

// 4.从字典中取出元素
let dict : [String : Any] = ["name" : "why", "age" : 18]
let value = dict["neme"] // Any/nil