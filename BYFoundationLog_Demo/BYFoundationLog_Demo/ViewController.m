//
//  ViewController.m
//  BYFoundationLog_Demo
//
//  Created by BaiYing on 2017/3/1.
//  Copyright © 2017年 BaiYing. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSData *strData = [@"str -> data格式的字符串" dataUsingEncoding:NSUTF8StringEncoding];
    
    NSData *dicData = [NSJSONSerialization dataWithJSONObject:@{@"key0": @"字典 -> data 的数据",}
                                                          options:NSJSONWritingPrettyPrinted
                                                            error:nil];
    
    NSMutableSet *set = [NSMutableSet setWithArray:@[@"set0",
                                                     strData,
                                                     dicData]];
    NSDictionary *dic = @{@"name"  : @"BY",
                           @"My bolg" : @"http://qiubaiying.top",
                           @"count" : @(11),
                           @"strData" : strData,
                           @"dicData" : dicData,
                           @"set"     : set,
                           @"emoji" : @"😀😁🤣😂😄",
                           @"contact" : @[@"BY Blog:http://qiubaiying.top",
                                          @"GitHub:https://github.com/qiubaiying",
                                          @"简书:https://http://www.jianshu.com/u/e71990ada2fd"]};
    NSLog(@"%@", dic);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
