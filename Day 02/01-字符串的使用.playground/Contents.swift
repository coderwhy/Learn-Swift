//: Playground - noun: a place where people can play

import UIKit

/*
 1.字符串的定义
    1> 不可变字符串的定义
    2> 可变字符串的定义
 2.获取字符串的长度
 3.字符串的拼接
    1> 字符串之间的拼接
    2> 字符串和其它标识符之间的拼接 "\(标识符)"
    3> 字符串拼接过程中格式化: String(format:"%d:%d", 参数)
 4.字符串的截取  
    1> 方式一: 将String转成NSString,再进行截取(推荐)
    2> 方式二: 直接使用String中方法,进行截取. String.Index
 */

// 1.定义字符串
// 1> 定义不可变字符串 : 使用let修饰
// let str : String = "hello swift"
let str = "Hello Swift"
// str = "hello Objective-C"

// 2> 定义可变字符串 : 使用var修饰
var strM = "Hello World"
strM = "Hello China"


// 2.获取字符串的长度
let length = str.characters.count


// 3.字符串的拼接
// 3.1.字符串之间的拼接
let str1 = "小码哥"
let str2 = "IT教育"
// OC拼接方式 NSString stringwithFormat:@"%@%@", str1, str2
let str3 = str1 + str2

// 3.2.字符串和其它标识符之间的拼接
let name = "why"
let age = 19
let height = 1.87

let infoStr = "my nams is \(name), age is \(age), height is \(height)"

// 3.3.字符串拼接过程中的格式化: 03:04
let min = 3
let second = 4

let timeStr = String(format: "%02d:%02d", min, second)


// 4.字符串的截取
let urlString = "www.520it.com"

// 4.1.方式一:
// 将String类型转成NSString类型,再进行截取: as NSString
let header1 = (urlString as NSString).substring(to: 3)
let range1 = NSMakeRange(4, 5)
let middle1 = (urlString as NSString).substring(with: range1)
let footer1 = (urlString as NSString).substring(from: 10)

// 4.2.方式二:
// 直接使用String类型方法,进行截取
let headerIndex = urlString.index(urlString.startIndex, offsetBy: 3)
let header2 = urlString.substring(to: headerIndex)

let startIndex = urlString.index(urlString.startIndex, offsetBy: 4)
let endIndex = urlString.index(urlString.startIndex, offsetBy: 9)
let range = Range(startIndex..<endIndex)
let middle2 = urlString.substring(with: range)

let footerIndex = urlString.index(urlString.endIndex, offsetBy: -3)
let footer2 = urlString.substring(from: footerIndex)
