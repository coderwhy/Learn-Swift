//
//  NetworkTools.swift
//  News
//
//  Created by 1 on 16/9/28.
//  Copyright © 2016年 小码哥. All rights reserved.
//

import UIKit
import Alamofire

enum MethodType {
    case get
    case post
}

class NetworkTools {
    // class方法 --> OC +开头
    class func requestData(URLString : String, type : MethodType, parameters : [String : Any]? = nil, finishedCallback : @escaping (_ result : Any) -> ()) {
        
        let method = type == .get ? HTTPMethod.get : HTTPMethod.post
        
        Alamofire.request(URLString, method: method, parameters: parameters).responseJSON { (response) in
            // 1.校验是否有结果
            /*
            if let result = response.result.value {
                finishedCallback(result)
            } else  {
                print(response.result.error)
            }
            */
            // 1.校验是否有结果
            guard let result = response.result.value else {
                print(response.result.error)
                return
            }
            
            // 2.将结果回调出去
            finishedCallback(result)
        }
    }
}
