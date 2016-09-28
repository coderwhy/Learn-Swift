//
//  HomeViewController.swift
//  News
//
//  Created by 1 on 16/9/28.
//  Copyright © 2016年 小码哥. All rights reserved.
//

import UIKit
import Alamofire

// MARK:- 类的声明
class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1.设置导航栏
        setupNavigationBar()
        
        // 2.请求数据
        loadData()
    }
    
}


// MARK:- 设置UI界面
extension HomeViewController {
    fileprivate func setupNavigationBar() {
        // 1.设置背景图片
        navigationController?.navigationBar.setBackgroundImage(UIImage(named: "reader_navigation_background"), for: .default)
        
        // 2.设置标题
        navigationItem.titleView = UIImageView(image: UIImage(named: "navigation_logo"))
        
        // 3.设置右侧的搜索按钮
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named : "navigation_search"), style: .plain, target: self, action: #selector(searchItemClick))
    }
}


// MARK:- 事件监听函数
extension HomeViewController {
    // @objc --> 为了保留OC的特性
    @objc fileprivate func searchItemClick() {
        print("-------")
    }
}



// MARK:- 网络数据的请求
extension HomeViewController {
    fileprivate func loadData() {
        NetworkTools.requestData(URLString: "http://c.m.163.com/nc/article/list/T1348649079062/0-20.html", type: .get) { (result : Any) in
            print(result)
        }
    }
}


