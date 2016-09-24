//: Playground - noun: a place where people can play

import UIKit

// 1.注意一:
// 在开发中,优先使用常量(let). 只有发现标识符需要修改时,再使用变量
// 目的: 防止在其它不希望修改的地方,不小心将值修改掉


// 2.注意二:
// 常量的本质: 指向的内存地址不可以修改,但是可以通过内存地址找到对应的对象,之后修改对象内部的属性

/*
 OC中创建对象:
    UIView *view = [[UIView alloc] init];
 Swift中创建对象:
    类型()
 */

// var a : Int = 20
// a = 10

/*
var view : UIView = UIView()
view = UIView()
 */

// 1> 指向的内存地址不可以修改
let view : UIView = UIView() // 0x100
// view = UIView() // 0x200

// 2> 但是可以通过内存地址,找到对应的对象,之后修改对象内部的属性
view.alpha = 0.5
view.backgroundColor = UIColor.blue



