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
    
    // Connect to server
    [[[[redis connectWithHost:@"api.ptaxi.cn" port:9806] then:^id(id value) {
        return [redis auth: @"ptaxi.cn@2" ];
        
    }] then:^id(id value) {
        NSLog(@"Connected");
        NSLog(@"返回结果： %@",value);
        
        return [redis rpush:@"ptaxi_track_8888" value:@"[114.000000,22.000000]"];
        
    }] catch:^id(NSError *err) {
        NSLog(@"Error: %@", err);
        return nil;
    }];
    
}



@end
