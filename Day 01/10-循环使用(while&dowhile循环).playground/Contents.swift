//: Playground - noun: a place where people can play

import UIKit

/*
 OC中while循环
    int a = 0
    while (a < 10) {
        a++
    }
    while (a) {
 
    }
 swift中while循环和OC区别
    1> while后面()可以省略
    2> 没有非0(nil)即真 Bool(true/false)
 */

var m = 0
while m < 10 {
    m += 1
    print(m)
}


repeat {
    m -= 1
    print(m)
} while m > 0