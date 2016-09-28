//
//  HttpTools.m
//  01-Block的回顾
//
//  Created by 1 on 16/9/27.
//  Copyright © 2016年 小码哥. All rights reserved.
//

#import "HttpTools.h"


@interface HttpTools()

@property(nonatomic ,copy) void (^finishedCallback)(NSString *);

@end

@implementation HttpTools

- (void)loadData:(void (^)(NSString *))finishedCallback
{
    self.finishedCallback = finishedCallback;
    
    // 1.发送网络的异步请求
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSLog(@"已经发送了网络请求:%@", [NSThread currentThread]);
        
        // 2.回到主线程
        dispatch_sync(dispatch_get_main_queue(), ^{
            NSLog(@"回到主线程:%@", [NSThread currentThread]);
            
            // 3.获取数据, 并且将数据回调出去
            finishedCallback(@"json数据");
        });
        
    });
    
}

@end
