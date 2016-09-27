//: Playground - noun: a place where people can play

import UIKit

/*
 1.内部参数&外部参数
 2.可变参数: 参数的个数是可变
 3.默认参数: 可以给某一个参数提供一个默认值
 4.指针菜蔬: inout
 */



// 1.内部参数&外部参数
// 内部参数: 在函数内部能看到标识符名称, 该标识符就是内部参数
// 外部参数: 在函数外部能看到标识符名称, 该标识符就是外部参数
// 默认情况下,所有的参数都是内部参数,也是外部参数
// 修改外部参数: 在标识符前加上外部参数名称即可
// 如果不希望显示外部参数, 可以在标识符前加上 _
func sum(_ num1 : Int, _ num2 : Int) -> Int {
    return num1 + num2
}

//let result = sum(num1: 20, num2: 30)
// let result = sum(abc: 20, num2: 30)
let result = sum(20, 30)


// 2.可变参数
/*
func sum(num1 : Int, num2 : Int, num3 : Int) -> Int {
    return num1 + num2 + num3
}
 */
// print("abc", "123", "cba")
func sum(_ nums : Int...) -> Int {
    var total = 0
    for n in nums {
        total += n
    }
    return total
}

// sum(nums: 20, 30, 40, 50)
// sum(nums: 20, 30, 40, 50, 60, 70)
sum(20, 30, 40)


// 3.默认参数
func makeCoffee(coffeeName : String = "雀巢") -> String {
    return "制作了一杯:\(coffeeName)咖啡"
}

makeCoffee(coffeeName: "拿铁")
makeCoffee(coffeeName: "猫屎")
makeCoffee()


// 4.指针参数
var m : Int = 20
var n : Int = 30


func swapNum(num1 : inout Int, num2 : inout Int) {
    let temp = num1
    num1 = num2
    num2 = temp
}

swapNum(num1: &m, num2: &n)


print("m:\(m) n:\(n)")










