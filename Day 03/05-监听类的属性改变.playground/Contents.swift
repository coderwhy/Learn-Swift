//: Playground - noun: a place where people can play

import UIKit

class Person {
    var name : String = "" {
        // 属性监听器: 选中其中之一即可
        // 监听属性即将发生改变: 还没有改变
        willSet(newName) {
            print(newName)
            print(name)
        }
        
        // 监听属性已经发生改变: 已经改变
        didSet(oldName) {
            print(oldName)
            print(name)
        }
    }
}

let p = Person()

p.name = "why"
p.name = "lmj"
