//: Playground - noun: a place where people can play

import UIKit

// 1.如何定义类
/*
 OC类的定义
 @interface Person : NSObject
 @end
 
 @impelment
 @end
 */

class Person {
    // 如果属性是值类型, 则初始化为空值
    // 如果属性是对象类型, 则初始化为nil值
    var name : String = ""
    var age : Int = 0
    var view : UIView?
}


// 2.创建类的对象
let view = UIView()

let p = Person()
p.name = "why"
p.age = 18
p.view = view
