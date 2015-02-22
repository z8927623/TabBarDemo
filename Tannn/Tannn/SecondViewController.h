//
//  SecondViewController.h
//  Tannn
//
//  Created by wildyao on 15/2/22.
//  Copyright (c) 2015年 wildyao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;

@end
