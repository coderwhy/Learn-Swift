//: Playground - noun: a place where people can play

import UIKit

/*
 OC的用法
    int a = 20
    
    if (a > 0) {
    }
 
    if (a) {
    }
 Swift中if和OC的区别
    1> if后面的()可以省略掉
    2> 没有非0(nil)即真 
        Bool(true/false)
 */
let a = 10

if a > 0 {
    print("a大于0")
}

if a != 0 {
    print("a不等于0")
}


// else if的使用
let score = 88

if score < 0 || score > 100 {
    print("不合理的分数")
} else if score < 60 {
    print("不及格")
} else if score < 80 {
    print("及格")
} else if score < 90 {
    print("良好")
} else {
    print("优秀")
}