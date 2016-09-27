//: Playground - noun: a place where people can play

import UIKit

class Person {
    var name : String = ""
    var age : Int = 0
    
    // 重写析构函数, 监听对象的销毁
    deinit {
        print("Person --- deinit")
    }
}

var p : Person? = Person()

p = nil
