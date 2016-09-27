//: Playground - noun: a place where people can play

import UIKit

/*
 1.枚举类型的常见定义方式
 2.创建枚举具体的值
 3.给枚举类型绑定值
 4.枚举类型另外一种定义方式
 */

// 1.枚举类型的定义
enum MethodType : String {
    case get = "get"
    case post = "post"
    case put = "put"
    case delete = "delete"
}


// 2.创建枚举具体的值
let type1 : MethodType = .get
let type2 = MethodType.post
let type3 = MethodType(rawValue: "put") // 值/nil
let str = type3?.rawValue

let btn = UIButton()
btn.setTitle("123", for: UIControlState.normal)


// 3.给枚举类型进行赋值
enum Direction : Int {
    case east = 0
    case west = 1
    case north = 2
    case south = 3
}

let d1 : Direction = .east
let d2 = Direction(rawValue: 1)


// 4.枚举类型定义方式二:
enum Type : Int {
    case get = 0, post, put, delete
}
