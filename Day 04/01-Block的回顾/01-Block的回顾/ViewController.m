//
//  ViewController.m
//  01-Block的回顾
//
//  Created by 1 on 16/9/27.
//  Copyright © 2016年 小码哥. All rights reserved.
//

#import "ViewController.h"
#import "HttpTools.h"

@interface ViewController ()

@property (nonatomic, strong) HttpTools *tools;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tools = [[HttpTools alloc] init];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    // 闭包&控制器&HttpTools对象有没有形成循环引用
    
    __weak ViewController *weakSelf = self;
    
    [self.tools loadData:^(NSString *jsonData) {
        // NSLog(@"在控制器中,拿到数据:%@", jsonData);
        weakSelf.view.backgroundColor = [UIColor redColor];
    }];
}

- (void)dealloc {
    NSLog(@"ViewController -- dealloc");
}

@end
