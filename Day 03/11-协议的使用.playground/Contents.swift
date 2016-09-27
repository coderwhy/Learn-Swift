//: Playground - noun: a place where people can play

import UIKit


/*
 1> 协议的定义
 2> 如何类遵守协议
 3> 协议在代理设计模式中如何使用
 4> 协议中方法的可选性
    protocol前面需要加上@objc
    方法前面加上 @objc optional
 */

// 1.协议的定义
protocol SportProtocol {
    // 默认情况下协议中的方法都是必须实现的方法
    func playBasketball()
    func playFootball()
}

// 2.定义类,并且遵守协议
class Teacher : SportProtocol {
    func playFootball() {
        print("踢足球")
    }
    
    func playBasketball() {
        print("打篮球")
    }
}


class Student : NSObject, SportProtocol {
    func playFootball() {
        print("踢足球")
    }
    
    func playBasketball() {
        print("打篮球")
    }
}


// 3.协议在代理设计模型中的使用
/*
 定义协议时, 协议后面最好跟上 : class
 delegate的属性最好用weak, 用于防止产生循环引用
 */
protocol BuyTicketDelegate : class {
    func buyTicket()
}


class Person {
    
    // 定义代理属性
    weak var delegate : BuyTicketDelegate?
    
    func goToBeijing() {
        delegate?.buyTicket()
    }
}


// 4.如何让协议中的方法是可选方法
// optional属于OC特性, 如果协议中有可选的方法, 那么必须在protocol前面加上@objc, 也需要在optional前面加上@objc
@objc protocol TestProtocol {
    @objc optional func test()
}


class Dog : TestProtocol {
    func test() {
        
    }
}
