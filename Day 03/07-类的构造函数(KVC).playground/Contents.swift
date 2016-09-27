//: Playground - noun: a place where people can play

import UIKit

/*
 使用KVC条件
    1> 必须继承自NSObject
    2> 必须在构造函数中,先调用super.init()
    3> 调用setValuesForKeys
    4> 如果字典中某一个key没有对应的属性, 则需要重写setValue forUndefinedKey方法
 */

class Person : NSObject {
    var name : String = ""
    var age : Int = 0
    var height : Double = 0
    
    init(dict : [String : Any]) {
        /*
        if let name = dict["name"] as? String {
            self.name = name
        }
        
        if let age = dict["age"] as? Int {
            self.age = age
        }
        
        if let height = dict["height"] as? Double {
            self.height = height
        }
        */
        super.init()
        setValuesForKeys(dict)
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {}
}

//let p = Person()

let p = Person(dict: ["name" : "why", "age" : 18, "height" : 1.88, "phoneNum" : "+86 110"])
print(p.age, p.name, p.height)
