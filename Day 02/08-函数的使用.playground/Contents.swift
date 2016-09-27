//: Playground - noun: a place where people can play

import UIKit

// 1.没有参数,没有返回值的函数
func about() -> Void {
    print("iPhone8")
}

func about1() {
    print("iPhone8")
}

about()


// 2.有参数,没有返回值的函数
func callPhone(phoneNum : String) {
    print("打电话给:\(phoneNum)")
}

callPhone(phoneNum: "+86 110")


// 3.没有参数,有返回值的函数
func readMsg() -> String {
    return "吃饭了吗?"
}

let msg = readMsg()
print(msg)


// 4.有参数,有返回值的函数
func sum(num1 : Int, num2 : Int) -> Int {
    return num1 + num2
}

let result = sum(num1: 20, num2: 30)
print(result)
