//
//  ViewController.swift
//  05-访问权限
//
//  Created by 1 on 16/9/28.
//  Copyright © 2016年 小码哥. All rights reserved.
//

import UIKit

/*
 1> internal : 内部的
    1. 默认情况下所有的类&属性&方法的访问权限都是internal
    2. 在本模块(项目/包/target)中可以访问
 2> private : 私有的
    1. 只有在本类中可以访问
 3> open : 公开的
    1. 可以跨模块(项目/包/target)都是可以访问
 4> fileprivate : Swift3.0
    1. 只要是在本文件中都是可以进行访问
 */

class ViewController: UIViewController {

    var name : String = ""
    private var age : Int = 0
    fileprivate var height : Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 访问name
        name = "why"
        print(name)
        
        // 访问age
        age = 18
        print(age)
        
        // 创建UIView对象
        let view = UIView()
        view.alpha = 0.5
        view.tag = 200
        view.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        
        // 访问height
        height = 1.88
        print(height)
    }
    
}



class Person {
    func test() {
        let vc = ViewController()
        vc.name = "why"
        // vc.age
        vc.height = 1.88
    }
}






