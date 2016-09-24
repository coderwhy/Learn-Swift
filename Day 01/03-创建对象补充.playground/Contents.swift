//: Playground - noun: a place where people can play

import UIKit

// 需求: 创建UIView对象，并且在UIView中添加UIButton

// 1.创建UIView对象
// OC : [[UIView alloc] initWithFrame:CGRect]
let rect = CGRect(x: 0, y: 0, width: 100, height: 100)
let view : UIView = UIView(frame: rect)

// 2.给View设置属性
view.backgroundColor = UIColor.red


// 3.创建UIButton对象
let btn : UIButton = UIButton()

// 4.给btn设置属性
// 4.1.设置btn的frame
btn.frame = CGRect(x: 0, y: 0, width: 50, height: 50)

// 4.2.设置btn的背景颜色
btn.backgroundColor = UIColor.orange

// 4.3.设置btn的文字(了解)
// Swift枚举类型: 
// 方式一: 如果可以根据上下文语法推断出该枚举的类型可以直接 .具体类型
// 方式二: 上下文推断不出类型, 枚举类型.具体类型
btn.setTitle("按钮", for: .normal)


// 5.将btn添加到UIView中
// 在swift中调用方法,统一使用 点语法
view.addSubview(btn)
