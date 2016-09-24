//: Playground - noun: a place where people can play

/*
 Swift初体验
    1> 导入框架
    2> 定义标识符: let/var
    3> 语句结束时;可以省略
    4> print()
 */

// 1.Swift中如何导入框架
/*
 OC导入框架: #import <UIKit/UIKit.h>
 */
import UIKit

// 2.定义标识符
/*
 OC定义标识符:
    int a = 20;
    a = 10;
 Swift定义标识符
    1> 定义标识符时,必须明确的指定该标识符是一个变量还是一个常量
    2> 使用var定义变量
    3> 使用let定义常量
    4> 定义格式: let/var 标识符名称 : 标识符类型 = 赋值
 */
// 2.1.定义变量
var a : Int = 20
a = 10

// 2.2.定义常量
let b : Double = 3.14
// b = 2.44 错误写法


// 3.在swift中,如果一行当中只有一条语句,那么语句结束时 ; 可以省略


// 4.打印内容
/*
 OC打印内容:
    NSLog(@"Hello World");
    NSLog(@"%d", a);
 */

print("hello world")
print(a)
