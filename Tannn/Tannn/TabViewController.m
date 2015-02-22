//
//  TabViewController.m
//  TabbarTest
//
//  Created by wildyao on 15/2/21.
//  Copyright (c) 2015年 wildyao. All rights reserved.
//

#import "TabViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
//#import "ThirdViewController.h"

@interface TabViewController ()

@end

@implementation TabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    FirstViewController *first = [[FirstViewController alloc] init];
//    first.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:0];
    UINavigationController *firstNav = [[UINavigationController alloc] initWithRootViewController:first];
    firstNav.tabBarItem.title = @"first";
    
    SecondViewController *second = [[SecondViewController alloc] init];
    UINavigationController *secondNav = [[UINavigationController alloc] initWithRootViewController:second];
    secondNav.tabBarItem.title = @"second";
    
//    ThirdViewController *third = [[ThirdViewController alloc] init];
//    UINavigationController *thirdNav = [[UINavigationController alloc] initWithRootViewController:third];
//    thirdNav.tabBarItem.title = @"third";
    self.viewControllers = @[firstNav, secondNav];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
