//: Playground - noun: a place where people can play

import UIKit


/*
 1.定义结构体
 2.创建结构体对应的值
 3.创建系统结构体方式
 4.给结构体扩充方法
 5.给结构体扩充构造函数
 */

// 1.定义结构体
struct Location {
    // 属性
    var x : Double
    var y : Double
    // var z : Double
    
    // 方法
    // 最普通的函数: 该函数是没有用到成员属性
    func test() {
        print("结构体中的test函数")
    }
    
    // 改变成员属性 : 如果在函数中修改了成员属性, 那么该函数前必须加上mutating
    mutating func moveH(_ distance : Double) {
        self.x += distance
    }
    
    
    // 给结构体扩充构造函数
    // 1> 默认情况下, 系统会为每一个结构体提供一个默认的构造函数, 并且该构造函数, 要求给每一个成员属性进行赋值
    // 2> 构造函数都是以init开头, 并且构造函数不需要返回值
    // 3> 在构造函数结束时, 必须保证所有的成员属性有被初始化
    init(x : Double, y : Double) {
        self.x = x
        self.y = y
    }
    
    init(xyStr : String) {
        // 20,30 --> ["20", "30"]
        let array = xyStr.components(separatedBy: ",")
        let item1 = array[0]
        let item2 = array[1]
        
        /*
        if let x = Double(item1) {
            self.x = x
        } else {
            self.x = 0
        }
        
        if let y = Double(item2) {
            self.y = y
        } else {
            self.y = 0
        }
        */
        
        // ?? 判断前面的可选类型是否有值
        // 有值, 则解包, 没有值,则使用后面的值
        self.x = Double(item1) ?? 0
        self.y = Double(item2) ?? 0
    }
}

// 2.创建结构体对应的值
var center = Location(x: 20, y: 30)
// let ceter = Location(x: 20, y: 30, z: 40)

// 3.系统结构体的创建方式
let rect = CGRect(x: 0, y: 0, width: 100, height: 100)
let size = CGSize(width: 20, height: 20)
let point = CGPoint(x: 0, y: 0)
let range = NSRange(location: 0, length: 3)


// 4.给结构体扩充方法
center.test()
//center.moveH(distance: 20)
center.moveH(20)
print(center)


// 5.给结构体扩充构造函数
Location(x: 20, y: 30)

Location(xyStr : "20,30")


