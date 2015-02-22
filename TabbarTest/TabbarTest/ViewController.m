//
//  ViewController.m
//  TabbarTest
//
//  Created by wildyao on 15/2/21.
//  Copyright (c) 2015年 wildyao. All rights reserved.
//

#import "ViewController.h"
#import "SubViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor cyanColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(50, 64, 100, 100);
    [btn setTitle:@"push" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [backBtn setFrame:CGRectMake(0, 0, 25, 25)];
    [backBtn setImage:[UIImage imageNamed:@"img_role_choose_back"] forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(onBtnBack:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
    UIBarButtonItem *space_left = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    space_left.width = -5;          // -left  +right
    self.navigationItem.leftBarButtonItems = [NSArray arrayWithObjects:space_left, leftItem, nil];
}

- (void)onBtnBack:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)push
{
    SubViewController *sub = [[SubViewController alloc] init];
    [self.navigationController pushViewController:sub animated:YES];
}

@end
