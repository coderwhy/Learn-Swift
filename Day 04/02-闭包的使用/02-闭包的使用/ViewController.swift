//
//  ViewController.swift
//  02-闭包的使用
//
//  Created by 1 on 16/9/27.
//  Copyright © 2016年 小码哥. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var httpTools : HttpTools?
    
    // 在swift中只要是对父类的方法进行重写, 必须在方法前加上override
    override func viewDidLoad() {
        super.viewDidLoad()
        
        httpTools = HttpTools()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        /*
         self.一般是可以省略掉
            1> 如果该方法中有局部变量和成员属性有歧义(名称相同)
            2> 在闭包中使用成员属性
        */
        // 问题: 有没有形成循环引用
        weak var weakSelf : ViewController? = self
        httpTools?.loadData({ (jsonData : String) in
            // print("在VIewController获取到数据:\(jsonData)")
            weakSelf?.view.backgroundColor = UIColor.red
        })
    }
    
    
    deinit {
        print("ViewController -- deinit")
    }
}

