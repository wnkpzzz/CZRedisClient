//
//  ViewController.m
//  35-demo-04
//
//  Created by zcz on 15-9-7.
//  Copyright (c) 2015年 zcz. All rights reserved.
//

#import "ViewController.h"
#import "TabBarViewController.h"
#import "OneController.h"
#import "TwoController.h"
#import "ThreeController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //设置跳转按钮
    UIButton *btn=[[UIButton alloc]initWithFrame:CGRectMake(20, 80, 130, 50)];
    [btn setTitle:@"跳转" forState:UIControlStateNormal];
    [btn setTintColor:[UIColor orangeColor]];
    btn.backgroundColor=[UIColor blackColor];
    [btn addTarget:self action:@selector(clickAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

    
}

- (void)clickAction{
    
    //定义一个可变数组，用于保存UIViewController对象。
    NSMutableArray *items = [[NSMutableArray alloc] init];
    
    OneController *testOne = [[OneController alloc] init];
    [items addObject:testOne];
    TwoController *testOnetwo = [[TwoController alloc] init];
    [items addObject:testOnetwo];
    ThreeController *testOnethree = [[ThreeController alloc] init];
    [items addObject:testOnethree];
    
    //初始化TabBarController
    TabBarViewController *tabBar = [[TabBarViewController alloc] init];
    [tabBar setTitle:@"测试"];
    // items是数组，每个成员都是UIViewController
    [tabBar setViewControllers:items];
    
    //界面跳转
    [self presentViewController:tabBar animated:YES completion:nil];}


@end
