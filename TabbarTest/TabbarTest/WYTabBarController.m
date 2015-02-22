//
//  WYTabBarController.m
//  CustomPopAnimation
//
//  Created by wangyang on 6/11/14.
//  Copyright (c) 2014 wangyang. All rights reserved.
//

#import "WYTabBarController.h"
#import "AppDelegate.h"
#import "UIViewControllerAdditions.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@implementation WYTabBarController

+ (WYTabBarController *)instance {
    WYTabBarController *instace = ((AppDelegate *)[UIApplication sharedApplication].delegate).tabBarController;
    return instace;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FirstViewController *viewController1 = [[FirstViewController alloc] init];
    viewController1.title = @"ONE";
    SecondViewController *viewController2 = [[SecondViewController alloc] init];
    viewController2.title = @"TWO";
    ThirdViewController *viewController3 = [[ThirdViewController alloc] init];
    viewController3.title = @"THREE";

    self.viewControllers = @[viewController1.defaultNavigationController,
                             viewController2.defaultNavigationController,
                             viewController3.defaultNavigationController,
                             ];
    
    self.tabBar.barTintColor = [UIColor colorWithWhite:1.0 alpha:0.1];
}

@end
