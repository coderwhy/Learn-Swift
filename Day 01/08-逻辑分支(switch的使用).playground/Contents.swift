//: Playground - noun: a place where people can play

import UIKit


/*
 1.switch的基本使用
    1> switch()可以省略
    2> case结束可以不加break
 2.基本使用补充
    1> case后面可以跟上多个条件
    2> 如果希望产生case穿透,可以在case结束时fallthrough
 3.可以判断多种类型
    1> 浮点型
    2> 字符串
    3> 区间类型
 */


// 1.switch基本使用

/*
 和OC的区别
    1> switch后面的()可以省略
    2> case语句结束时,可以不加break
 */

let sex = 1

// sex 0 : 男  1 : 女
switch sex {
case 0:
    print("男")
case 1:
    print("女")
default:
    print("其它")
}


// 2.基本用法补充
// 1> 在swift中,switch后面case可以判断多个条件
// 2> 如果希望case结束时,产生case穿透.case结束时,加上fallthrough
switch sex {
case 0, 1:
    print("正常人")
    fallthrough
default:
    print("非正常人")
}


// 3.switch判断其它类型
// 3.1.判断浮点型
let m = 3.14

switch m {
case 3.14:
    print("和π相等")
default:
    print("和π不相等")
}

// 3.2.判断字符串
let a = 20
let b = 30
let oprationStr = "*"
var result = 0

switch oprationStr {
case "+":
    result = a + b
case "-":
    result = a - b
case "*":
    result = a * b
case "/":
    result = a / b
default:
    print("不合理的操作符")
}


// 3.3.判断区间类型
/*
 区间
    1> 半开半闭区间 0~9 0..<10
    2> 闭区间 0~9 0...9
    错误写法 1~9 0<.<10
    正确写法 1~9 1..9/1..<10
 */

let score = 88

switch score {
case 0..<60:
    print("不及格")
case 60..<80:
    print("及格")
case 80..<90:
    print("良好")
case 90...100:
    print("优秀")
default:
    print("不合理的分数")
}

