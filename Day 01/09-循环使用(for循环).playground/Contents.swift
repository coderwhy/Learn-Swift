//: Playground - noun: a place where people can play

import UIKit

/*
 OC的for循环
    for (int i = 0; i < 10; i++) {
        NSLog(@"%d", i);
    }
 */

// Swift2.0+写法
/*
for (var i = 0; i < 10; i++) {
    print(i)
}
 */

// Swift中for循环现在只支持区间遍历
// 0..<10/0...9
for i in 0..<10 {
    print(i)
}

for i in 0...10 {
    print(i)
}


// 打印10次hello world
// 在swift开发中,如果一个变量/常量暂停不会使用,那么可以使用_来代替
for _ in 0..<10 {
    print("hello world")
}