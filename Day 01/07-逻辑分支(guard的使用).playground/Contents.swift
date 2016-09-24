//: Playground - noun: a place where people can play

import UIKit

// 年龄是20, 判断该人能不能在网吧上网
let age = 20

// Swift方法(函数)
/*
func online(age : Int) {
    if age >= 18 {
        if 带了身份证 {
            if 带了钱 {
                print("可以上网")
            } else {
                print("回家拿钱")
            }
        } else {
            print("回家拿身份证")
        }
    } else {
        print("回家去")
    }
}
 */

func online(age : Int) {
    // guard : 守卫
    // 1.判断年龄是否大于18岁
    guard age >= 18 else {
        print("回家去")
        return
    }
    
    // 2.判断是否带了身份证
    guard 带了身份证 else {
        print("回家拿身份证")
        return
    }
    
    // 3.判断是否带了钱
    guard 带了钱 else {
        print("回家拿钱")
        return
    }
    
    print("留下上网")
}

online(age: age)
