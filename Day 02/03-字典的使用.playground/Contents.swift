//: Playground - noun: a place where people can play

import UIKit


/*
 1.定义的定义
    1> 不可变字典: let
    2> 可变字典: var
 2.对可变字典的基本操作
    增删改查
 3.遍历字典
    1> 所有的key   
    2> 所有的value
    3> 所有的key/value
 4.字典合并
 */


// 1.如何定义字典
// 1> 定义不可变字典 : 使用let修饰
let a : Int = 10
// 编译器会根据[]中是一个个元素(数组),还是键值对(字典)
//let dict = ["name" : "why", "age" : 18, "height" : 1.88] as [String : Any]
//let dict = ["123" : "321", "abc" : "cba"] 不需要进行转化
// Array<String> --> [String]
// let dict : Dictionary<String, Any> = ["name" : "why", "age" : 18, "height" : 1.88]
// dict["phoneNum"] = "+86 110" 错误写法
let dict : [String : Any] = ["name" : "why", "age" : 18, "height" : 1.88]

// 2> 定义可变字典 : 使用var修饰
// var arrayM = [String]()
// var dictM = Dictionary<String, Any>()
var dictM = [String : Any]()


// 2.对可变字典的基本操作(增删改查)
// 2.1.添加元素
dictM["name"] = "why"
dictM["age"] = 18
dictM["height"] = 1.88
dictM

// 2.2.删除元素
dictM.removeValue(forKey: "height")
dictM

// 2.3.修改元素
dictM["name"] = "lmj"
dictM.updateValue("lnj", forKey: "name")
dictM

// 2.4.查找元素
dictM["age"]


// 3.遍历字典
// 3.1.遍历字典中所有的key
for key in dict.keys {
    print(key)
}

print("---------")

// 3.2.遍历字典中所有的value
for value in dict.values {
    print(value)
}

print("---------")

// 3.3.遍历字典中所有的key/value
for (key, value) in dict {
    print(key, value)
}


// 4.字典合并
var dict1 : [String : Any] = ["name" : "why", "age" : 18]
let dict2 : [String : Any] = ["height" : 1.88, "phoneNum" : "+86 110"]

//let resultDict = dict1 + dict2
for (key, value) in dict2 {
    dict1[key] = value
}

dict1







