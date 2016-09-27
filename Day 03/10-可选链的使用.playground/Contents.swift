//: Playground - noun: a place where people can play

import UIKit

/*
 1> 从可选链中进行取值?.
 2> 给可选链进行赋值
 3> 可选链调用方法
 */


// 1.创建三个类
class Person {
    var name : String = ""
    var dog : Dog?
}

class Dog {
    var weight : Double = 0.0
    var toy : Toy?
}

class Toy {
    var price : Double = 0
    
    func flying() {
        print("飞盘在飞ing")
    }
}


// 2.创建类的对象
let p = Person()
p.name = "why"
let d = Dog()
d.weight = 60.0
let t = Toy()
t.price = 100

p.dog = d
d.toy = t


// 3.可选链的使用
// 3.1.取出why的狗的玩具的价格
/*
 该写法非常危险:
    let dog = p.dog
    let toy = dog!.toy
    let price = toy!.price
 */

/*
 该写法非常麻烦
    if let dog = p.dog {
        if let toy = dog.toy {
            let price = toy.price
        }
    }
 */
// ?.就是可选链: 系统会自动判断该可选类型是否有值
// 如果有值,则解包, 如果没有值, 则赋值为nil
// 注意: 可选链条获取的值,一定是一个可选类型
if let price = p.dog?.toy?.price { // Double/nil
    print(price)
}

let price = p.dog?.toy?.price


// 3.2.给why的狗的玩具赋值一个新的价格
// 如果可选链中有一个可选类型是没有值, 那么语句直接不执行
p.dog?.toy?.price = 50


// 3.3.可选链调用方法
/*
 该写法太麻烦
    if let dog = p.dog {
        if let toy = dog.toy {
            toy.flying()
        }
    }
 */

p.dog?.toy?.flying()

