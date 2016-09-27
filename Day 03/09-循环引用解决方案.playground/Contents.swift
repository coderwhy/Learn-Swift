//: Playground - noun: a place where people can play

import UIKit

// 1.创建类
class Person {
    var name : String = ""
    var book : Book?
    
    deinit {
        print("Person -- deinit")
    }
}

class Book {
    var price : Double = 0
    /*
     OC中表示弱引用
        __weak/__unsafe_unretained(野指针错误)
     Swift中表示弱引用
        weak/unowned(野指针错误)
    */
    // weak var owner : Person?
    // unowned 不能用于修饰可选类型
    unowned var owner : Person = Person()
    
    deinit {
        print("Book -- deinit")
    }
}


// 2.创建两个对象
var person : Person? = Person()
person!.name = "why"
var book : Book? = Book()
book!.price = 60.0

person!.book = book
book!.owner = person!


person = nil
book = nil
