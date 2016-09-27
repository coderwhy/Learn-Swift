//: Playground - noun: a place where people can play

import UIKit


/*
 1.定义可选类型
    1> Optional<String> 
    2> String?
 2.给可选类型进行赋值
    1> Optional("why")
    2> "why"
 3.从可选类型中取值
    name! --> 强制解包
 4.注意: 强制解包非常危险,所有先判断,再解包
 5.语法: 可选绑定
    if let name = name {
        print(name)
    }
 */

/*
class Person {
    var name : String = nil
}
 */

//var str : String = "why"

// nil是一个特殊的类型, 跟String/Int
// let m : Int = "why" 错误写法
// var name : String = nil

// 在开发中,只有可选类型才能赋值为nil, 其它类型都不能赋值为nil
// 1.定义可变类型: 泛型集合
// var m : Int = 20 定义Int类型 Array<String> -> [String]
// 1> 定义方式一:
// var name : Optional<String> = nil
// 2> 定义方式二: 语法糖
var name : String? = nil


// 2.给可选类型赋值
//// 2.1.赋值方式一:
//name = Optional("why")
//
//// 2.2.赋值方式二:
name = "why"


// 3.取出可选类型中的值
// print(name)
// 从可选类型中取值: 可选类型 + ! --> 强制解包
// print(name!)

// 4.注意: 强制解包非常危险, 如果可选类型为nil,那么强制解包就会崩溃
if name != nil {
    print(name!)
}


// 5.可选绑定(固定格式) : 该语法用于可选类型, 使我们使用起来可选类型更加方便
// 1> 判断name是否有值, 如果没有值,则直接不执行{}
// 2> 如果name有值,那么系统会自动对可选类型进行解包, 并且将解包后的结果赋值给前面的tempName
if let tempName = name {
    print(tempName)
}

if let name = name {
    print(name)
}













