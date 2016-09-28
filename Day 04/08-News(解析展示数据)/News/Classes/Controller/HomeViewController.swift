//
//  HomeViewController.swift
//  News
//
//  Created by 1 on 16/9/28.
//  Copyright © 2016年 小码哥. All rights reserved.
//

import UIKit
import Alamofire

// MARK:- 定义全局常量
private let kHomeCellID = "kHomeCellID"

// MARK:- 类的声明
class HomeViewController: UIViewController {
    
    // MARK: 懒加载属性
    fileprivate lazy var newsModels : [NewsModel] = [NewsModel]()
    fileprivate lazy var tableView : UITableView = {[unowned self] in
        // 1.创建UITableView
        let tableView = UITableView()
        
        // 2.设置tableView相关的属性
        tableView.frame = self.view.bounds
        tableView.dataSource = self
        tableView.rowHeight = 90
        
        // 3.注册Cell
        tableView.register(UINib(nibName: "NewsViewCell", bundle: nil), forCellReuseIdentifier: kHomeCellID)
        
        return tableView
    }()
    
    // MARK: 系统回调函数
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1.设置导航栏
        setupNavigationBar()
        
        // 2.添加UITableView
        view.addSubview(tableView)
        
        // 3.请求数据
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
            // 1.将Any类型转成字典类型
            guard let resultDict = result as? [String : Any] else { return }
            
            // 2.根据T1348649079062的Key取出内容
            guard let dataArray = resultDict["T1348649079062"] as? [[String : Any]] else { return }
            
            // 3.遍历字典,将字典转成模型对象
            for dict in dataArray {
                self.newsModels.append(NewsModel(dict: dict))
            }
            
            // 4.刷新表格
            self.tableView.reloadData()
        }
    }
}


// MARK:- 实现UITableView的数据源
extension HomeViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 1.获取Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: kHomeCellID, for: indexPath) as! NewsViewCell
        
        // 2.给Cell设置数据
        cell.newsModel = newsModels[indexPath.row]
        
        return cell
    }
}


