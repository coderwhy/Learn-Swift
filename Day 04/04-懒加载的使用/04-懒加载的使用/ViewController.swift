//
//  ViewController.swift
//  04-懒加载的使用
//
//  Created by 1 on 16/9/28.
//  Copyright © 2016年 小码哥. All rights reserved.
//

import UIKit

/*
 懒加载有两个特点
    1> 用到时再加载
    2> 多次使用只会加载一次
 */

class ViewController: UIViewController {
    
    // lazy var names : [String] = ["why", "lmj", "lnj"]
    lazy var names : [String] = {
        let names = ["why", "lmj", "lnj"]
        
        print("-----")
        
        return names
    }()
    
    // 方式一: 仅仅能创建Btn
    // lazy var btn : UIButton = UIButton()
    
    // 方式二: 可以设置更多btn的属性
    lazy var btn : UIButton = {
        let btn = UIButton()
        
        btn.setTitle("按钮", for: .normal)
        btn.setImage(UIImage(named: ""), for: .normal)
        
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print(names.count)
        print(btn)
    }
}

