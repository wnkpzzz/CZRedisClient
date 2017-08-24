//
//  ViewController.m
//  newLast
//
//  Created by  Mac on 2017/8/24.
//  Copyright © 2017年  Mac. All rights reserved.
//

#import "ViewController.h"

#import "CocoaRedis.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    CocoaRedis *redis = [CocoaRedis new];
    
    [[[[redis connectWithHost:@"请求地址" port: @"端口号"] then:^id(id value) {
        return [redis auth: @"请求密码" ];
        
    }] then:^id(id value) {
        NSLog(@"Connected");
        NSLog(@"返回结果： %@",value);
        
        // 发送请求数据：这里的请求数据类型根据后台要求，方法是不一样的！！！
        return [redis rpush:@"ptaxi_track_8888" value:@"[114.000000,22.000000]"];
        
    }] catch:^id(NSError *err) {
        NSLog(@"Error: %@", err);
        return nil;
    }];
    
}



@end
