//: Playground - noun: a place where people can play

import UIKit


/*
 数组的使用
    1.数组的定义
        1> 定义不可变数组
        2> 定义可变数组
    2.对可变数组的基本操作
        增删改查
    3.数组的遍历
        1> 获取数组的长度
        2> 数组的遍历(i/item/index-item)
    4.数组的合并
 */


// 1.数组的定义
// 1> 定义不可变数组: 使用let修饰 
// 数组的类型: 1> Array<String> 2> [String] (推荐)
let array = ["why", "lmj", "lnj"]
// array.append("yz")

// 2> 定义可变数组: 使用var修饰
// UIView() CGRect()
// var arrayM = Array<String>()
var arrayM = [String]()


// 2.对可变数组的基本操作
// 增删改查
// 2.1.添加元素
arrayM.append("why")
arrayM.append("lmj")
arrayM.append("lnj")

// 2.2.删除元素
arrayM.remove(at: 0)
arrayM

// 2.3.修改元素
arrayM[0] = "yz"
arrayM

// 2.4.获取元素
let item = arrayM[1]


// 3.对数组的遍历
// 3.1.获取数组的长度
let count = array.count

// 3.2.对数组进行遍历(可以获取到下标值)
for i in 0..<count {
    print(array[i])
}

// 3.3.对数组进行遍历(不需要获取下标值)
for item in array {
    print(item)
}


// 3.4.对数组进行遍历(既获取下标值,又获取元素)
for (index, item) in array.enumerated() {
    print(index)
    print(item)
}


// 4.数组的合并
// 如果两个数组中存放的是相同的元素,那么在swift中可以对两个数组进行相加,直接合并
let array1 = ["why", "yz"]
let array2 = ["lmj", "lnj"]
let array3 = [12, 20, 30]

let resultArray = array1 + array2

// let result = array1 + array3 错误写法






