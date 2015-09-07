//
//  ThreeController.m
//  35-demo-04
//
//  Created by zcz on 15-9-7.
//  Copyright (c) 2015年 zcz. All rights reserved.
//

#import "ThreeController.h"

@interface ThreeController ()

@end

@implementation ThreeController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:@"商城" image:[UIImage  imageNamed:@"more.png"] tag:3];
        self.tabBarItem = item;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn=[[UIButton alloc]initWithFrame:CGRectMake(20, 80, 100, 40)];
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    [btn setTintColor:[UIColor orangeColor]];
    btn.backgroundColor=[UIColor brownColor];
    [btn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)backAction
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
