//
//  HttpTools.swift
//  02-闭包的使用
//
//  Created by 1 on 16/9/27.
//  Copyright © 2016年 小码哥. All rights reserved.
//

import UIKit

class HttpTools {
    
    var finishedCallback : ((_ jsonData : String) -> ())?
    
    // 闭包类型: (_ 参数列表) -> (返回值类型)
    // @escaping : 逃逸的
    func loadData(_ finishedCallback : @escaping (_ jsonData : String) -> ()) {
        
        self.finishedCallback = finishedCallback
        
        // 1.发送异步网络请求
        DispatchQueue.global().async {
            print("发送异步网络请求:\(Thread.current)")
            
            DispatchQueue.main.sync {
                print("回到主线程:\(Thread.current)")
                
                finishedCallback("json数据")
            }
        }
    }
}
