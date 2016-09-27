//: Playground - noun: a place where people can play

import UIKit

// 1.创建类
class Student {
    // 类的属性定义
    // 存储属性: 用于存储实例的常量&变量
    var name : String = ""
    var age : Int = 0
    var mathScore : Double = 0.0
    var chineseScore : Double = 0.0
    
    // 计算属性: 通过某种方式计算得来结果的属性,就是计算属性 --> 只读属性(了解)
    var averageScore : Double {
        return (chineseScore + mathScore) * 0.5
    }
    
    // 类属性: 和整个类相关的属性, 并且是通过类名进行访问
    static var courseCount : Int = 0
    
    
    // 给类扩充函数
    // 在OC中写的很多没有参数的方法, 在swift中可以写成计算属性
    /*
    func getAverageScore() -> Double {
        return (chineseScore + mathScore) * 0.5
    }
    */
}

// 2.创建类的对象
let stu = Student()

stu.name = "why"
stu.age = 18
stu.mathScore = 90
stu.chineseScore = 60
print(stu.name, stu.age)

// 3.需求: 获取某一个学生的平均成绩
// let averageScore = (stu.mathScore + stu.chineseScore) * 0.5
// print(stu.getAverageScore())
print(stu.averageScore)

// 4.访问类属性
// stu.cour
Student.courseCount = 2



