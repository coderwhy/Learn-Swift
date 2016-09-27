//: Playground - noun: a place where people can play

import UIKit

// why 18 1.88

// 1.使用数组保存信息
let infoArray : [Any] = ["why", 18, 1.88]
let arrayName = infoArray[0] as! String
print(arrayName.characters.count)


// 2.使用字典保存信息
let infoDict : [String : Any] = ["name" : "why", "age" : 18, "height" : 1.88]
let dictName = infoDict["name"] as! String
print(dictName.characters.count)


// 3.使用元组保存信息(取出数据时,更加方便)
// 3.1.写法一:
let infoTuple0 = ("why", 18, 1.88)
let tupleName = infoTuple0.0
let tupleAge = infoTuple0.1
print(tupleName.characters.count)

infoTuple0.0
infoTuple0.1
infoTuple0.2

// 3.2.写法二:
let infoTuple1 = (name : "why",age : 18, height : 1.88)
infoTuple1.age
infoTuple1.name
infoTuple1.height


// 3.3.写法三:
let (name, age, height) = ("why", 18, 1.88)
name
age
height